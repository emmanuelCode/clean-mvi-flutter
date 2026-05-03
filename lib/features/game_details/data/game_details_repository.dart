import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import '../../../core/utils/strings_utils.dart';
import '../../search_games/data/game_search_repository.dart';
import '../domain/mvi_model/game_details_entity.dart';

abstract class GameDetailsRepository {
  Future<GameDetailsEntity> getGameDetails(int gameId);
}

class Game implements GameDetailsRepository {
  final Uri uri; //todo candidate for unit testing
  final int gameId;
  Game(this.gameId)
    : uri = Uri.https(
        GameApiConfig.baseUrl,
        '${GameApiConfig.gamePath}/$gameId',
        {'key': GameApiConfig.apiKey},
      );

  @override
  Future<GameDetailsEntity> getGameDetails(int gameId) async {
    debugPrint('GET GAME DETAILS: $gameId');
    try {
      debugPrint('URI: ${uri.toString()}');
      var response = await http.get(uri);
      debugPrint('GameResponse: $response');
      debugPrint('URI2: ${uri.toString()}');

      if (response.statusCode == 200) {
        var result = jsonDecode(response.body); // the data is an array
        debugPrint('GameResponse: $response');

        debugPrint('GameDetailsEntity: $result');
        debugPrint('ID: ${result['id']}');
        debugPrint('NAME: ${result['name']}');
        // debugPrint('DESCRIPTION: ${result['description']}');

        debugPrint('id: $result[0]');

        debugPrint('BACKGROUND_IMAGE: ${result['background_image']}');
        debugPrint('SHORT_SCREENSHOTS: ${result['short_screenshots']}');

        final screenShots = await _getScreenShots(gameId);


        return GameDetailsEntity(
          id: result['id'],
          name: result['name'],
          nameOriginal:
              result['name_original'], // todo to check name original to see if gone throught ui
          description: stripHtmlTags(result['description'] ?? ''),
          released: result['released'],
          backgroundImage: '${result['background_image']}',
          screenShots: screenShots,
          genres: (result['genres'] as List<dynamic>?)
              ?.map((e) => e['name'] as String?)
              // filter out null values and if null return empty string instead
              .whereType<String>()
              .join(', '),
          platforms: (result['platforms'] as List<dynamic>?)
              ?.map((e) => e['platform']?['name'] as String?)
              .whereType<String>()
              .join(', '),
          esrbRating: result['esrb_rating']?['name'] as String?,
        );
      }
    } catch (e) {
      debugPrint('Error fetching game details: $e');
      throw Exception('Failed to load game details');
    }

    return Future.error('Failed to load game details');
  }

  Future<List<ScreenShot>?> _getScreenShots(int gameId) async {
    final screenshotsUri = uri.replace(
      path: '${GameApiConfig.gamePath}/$gameId/screenshots',
    );

    debugPrint('URI: ${screenshotsUri.toString()}');

    try {
      var response = await http.get(screenshotsUri);

      debugPrint('ScreenshotsResponse: $response');

      if (response.statusCode == 200) {
        var result = jsonDecode(response.body); // the data is an array
        debugPrint('ScreenshotsResponse: $response');

        debugPrint('ID: ${result['results']}');

     return (result['results'] as List<dynamic>)
          .map((e) => ScreenShot.fromJson(e as Map<String, dynamic>))
          .toList();

      }
    } catch (e) {
      debugPrint('Error fetching screenshots: $e');
      throw Exception('Failed to load screenshots');
    }

    return Future.error('Failed to load screenShots');
  }
}
