import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import '../../search_games/data/game_search_repository.dart';
import '../domain/mvi_model/game_details_entity.dart';

// Helper function to remove HTML tags from text
String stripHtmlTags(String htmlText) {
  // Replace closing paragraph tags with double newline (paragraph break)
  String plainText = htmlText.replaceAll('</p>', '\n');

  // Replace line breaks with newline
  plainText = plainText.replaceAll('<br>', '\n');
  plainText = plainText.replaceAll('<br/>', '\n');
  plainText = plainText.replaceAll('<br />', '\n');

  // Remove remaining HTML tags like <p>, <div>, etc.
  plainText = plainText.replaceAll(RegExp(r'<[^>]*>'), '');

  // Remove leading/trailing whitespace
  return plainText.trim();
}

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
        return GameDetailsEntity.fromJson({
          'id': result['id'],
          'name': result['name'],
          'name_original': result['name_original'],
          'description': stripHtmlTags(result['description'] ?? ''),
          'released': result['released'],
          'background_image': '${result['background_image']}',
          'short_screenshots': result['short_screenshots'],
        });
      }
    } catch (e) {
      debugPrint('Error fetching game details: $e');
      throw Exception('Failed to load game details');
    }

    return Future.error('Failed to load game details');
  }
}
