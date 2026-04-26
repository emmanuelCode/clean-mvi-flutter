import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter_clean_architecture_with_mvi/features/search_games/domain/mvi_model/game_list_entity.dart';
import 'package:http/http.dart' as http;

import '../domain/utils/pagination_calculator.dart';

class GameApiConfig {
  static const apiKey = String.fromEnvironment('gameApi', defaultValue: '');
  static const String baseUrl = 'api.rawg.io';
  static const String gamePath = '/api/games';
  static const int pageSize = 40;
}

abstract class GameSearchRepository {
  // will hold the name for the search across requests
  String currentSearch = '';

  /// Search for games by name
  Future<GameListEntity> fetchGames(String name);

  // fetch next page or previous page
  Future<GameListEntity> fetchPage(Uri uri);
}

// will be initialized with riverpod in intent factory class
class Search extends GameSearchRepository {
  final Uri uri;

  Search()
    : uri = Uri.https(GameApiConfig.baseUrl, GameApiConfig.gamePath, {
        'key': GameApiConfig.apiKey,
        // extra search parameters
        'search_precise': 'true',
        'search_exact': 'true',
        'page_size': GameApiConfig.pageSize.toString(), // 40 per page
      });

  @override
  Future<GameListEntity> fetchGames(String name) {
    super.currentSearch = name;

    debugPrint(
      'URI: ${uri.replace(queryParameters: {...uri.queryParameters, 'search': name})}',
    );

    return http
        .get(
          uri.replace(
            queryParameters: {...uri.queryParameters, 'search': name},
          ),
        )
        .then((response) {
          if (response.statusCode == 200) {
            var result = jsonDecode(response.body);

            debugPrint('GameListEntity: ${result['results']}');

            final count = result['count'] as int; // cast as int for calculation
            final totalPages = calculateTotalPages(count, GameApiConfig.pageSize);
            final currentPage = calculateCurrentPage(
              result['next'],
              result['previous'],
              totalPages,
            );

            return GameListEntity.fromJson({
              'count': count,
              'next': result['next'],
              'previous': result['previous'],
              'gameList': result['results'],
              'totalPages': totalPages,
              'currentPage': currentPage,
            });
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

        debugPrint('GameListEntity: ${result['results']}');

        final count = result['count'] as int; // cast as int for calculation
        final totalPages = calculateTotalPages(count, GameApiConfig.pageSize);
        final currentPage = calculateCurrentPage(
          result['next'],
          result['previous'],
          totalPages,
        );

        return GameListEntity.fromJson({
          'count': count,
          'next': result['next'],
          'previous': result['previous'],
          'gameList': result['results'],
          'totalPages': totalPages,
          'currentPage': currentPage,
        });
      } else {
        throw Exception('Failed to load games');
      }
    });
  }
}
