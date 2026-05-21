import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import '../../../core/config/api_config.dart';
import '../../../core/utils/strings_utils.dart';
import '../domain/mvi_model/game_details_entity.dart';

abstract class GameDetailsRepository {
  Future<GameDetailsEntity> getGameDetails(int gameId);
}

class Game implements GameDetailsRepository {
  final http.Client _client;

  Game({http.Client? client}) : _client = client ?? http.Client();

  @override
  Future<GameDetailsEntity> getGameDetails(int gameId) async {
    debugPrint('GET GAME DETAILS: $gameId');
    try {
      final requestUri = Uri.https(
        GameApiConfig.baseUrl,
        '${GameApiConfig.gamePath}/$gameId',
        {'key': GameApiConfig.apiKey},
      );

      debugPrint('URI: ${requestUri.toString()}');
      final response = await _client.get(requestUri);
      debugPrint('GameResponse: $response');

      if (response.statusCode == 200) {
        final result = jsonDecode(response.body); // the data is an array
        debugPrint('GameResponse: $response');

        debugPrint('GameDetailsEntity: $result');
        debugPrint('ID: ${result['id']}');
        debugPrint('NAME: ${result['name']}');
        // debugPrint('DESCRIPTION: ${result['description']}');

        debugPrint('id: $result[0]');

        debugPrint('BACKGROUND_IMAGE: ${result['background_image']}');
        debugPrint('SHORT_SCREENSHOTS: ${result['short_screenshots']}');

        final screenshots = await _getScreenshots(gameId);

        return GameDetailsEntity(
          id: result['id'],
          name: result['name'],
          nameOriginal: result['name_original'],
          description: stripHtmlTags(result['description'] ?? ''),
          released: result['released'],
          backgroundImage: '${result['background_image']}',
          screenshots: screenshots,
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

  Future<List<Screenshot>?> _getScreenshots(int gameId) async {
    final screenshotsUri = Uri.https(
      GameApiConfig.baseUrl,
      '${GameApiConfig.gamePath}/$gameId/screenshots',
      {'key': GameApiConfig.apiKey},
    );

    debugPrint('URI: ${screenshotsUri.toString()}');

    try {
      final response = await _client.get(screenshotsUri);

      debugPrint('Screenshots Response: $response');

      if (response.statusCode == 200) {
        final result = jsonDecode(response.body); // the data is an array
        debugPrint('Screenshots Response: $response');

        debugPrint('ID: ${result['results']}');

        return (result['results'] as List<dynamic>)
            .map((e) => Screenshot.fromJson(e as Map<String, dynamic>))
            .toList();
      }
    } catch (e) {
      debugPrint('Error fetching screenshots: $e');
      throw Exception('Failed to load screenshots');
    }

    return Future.error('Failed to load screenshots');
  }
}
