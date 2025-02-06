import 'dart:convert';

import 'package:flutter_clean_architecture_with_mvi/features/search_games/domain/mvi_model/game_list_entity.dart';
import 'package:http/http.dart' as http;

abstract class GameSearchRepository {
  /// Search for games by name
  Future<GameListEntity> fetchGames(String name);
}

class SearchGame extends GameSearchRepository {
  final String apiKey;
  final String baseUrl;
  final Uri uri;

  SearchGame({required this.apiKey, required this.baseUrl})
      : uri = Uri.https(baseUrl, '', {
          'key': apiKey,
          // extra search parameters
          'search_precise': 'true',
          'search_exact': 'true',
        });

  @override
  Future<GameListEntity> fetchGames(String name) {

    return http
      .get(uri.replace(queryParameters: {
        ...uri.queryParameters,
        'search': name,
      }))
      .then((response) {
        if (response.statusCode == 200) {
        var result = jsonDecode(response.body);
        result = result['results'];
        
        return GameListEntity.fromJson(
          {
          'count': result['count'],
          'next': result['next'],
          'previous': result['previous'],
          'gameListEntity': result['results'],
          },
        );
        } else {
        throw Exception('Failed to load games');
        }
      });
  }
}
