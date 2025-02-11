import 'dart:convert';

import 'package:flutter_clean_architecture_with_mvi/features/search_games/domain/mvi_model/game_list_entity.dart';
import 'package:http/http.dart' as http;

class GameApiConfig {
  static const apiKey = String.fromEnvironment('gameApi', defaultValue: '');
  static const String baseUrl = 'api.rawg.io';
  static const String gamePath = '/api/games';
}

abstract class GameSearchRepository {
  // will hold the name for the search across requests
  String currentSearch = '';

  /// Search for games by name
  Future<GameListEntity> fetchGames(String name);

  // fetch next page or previous page
  Future<GameListEntity> fetchPage(Uri uri);


}

// will be initialezed with riverpod in intent factory class
class Search extends GameSearchRepository {

  final Uri uri;

  //TODO: may need count for page

  Search()
      : uri = Uri.https(GameApiConfig.baseUrl, GameApiConfig.gamePath, {
          'key': GameApiConfig.apiKey,
          // extra search parameters
          'search_precise': 'true',
          'search_exact': 'true',
        });

  @override
  Future<GameListEntity> fetchGames(String name) {
    super.currentSearch = name;
    return http
        .get(uri.replace(queryParameters: {
      ...uri.queryParameters,
      'search': name,
    }))
        .then((response) {
      if (response.statusCode == 200) {
        var result = jsonDecode(response.body);

        return GameListEntity.fromJson(
          {
            'count': result['count'],
            'next': result['next'],
            'previous': result['previous'],
            'gameList': result['results'],
          },
        );
      } else {
        throw Exception('Failed to load games');
      }
    });
  }

  @override
  Future<GameListEntity> fetchPage(Uri uri) {
   return http.get(uri).then((response) {
      if (response.statusCode == 200) {
        var result = jsonDecode(response.body);

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
