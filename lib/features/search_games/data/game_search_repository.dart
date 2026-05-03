import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter_clean_architecture_with_mvi/features/search_games/domain/mvi_model/game_list_entity.dart';
import 'package:http/http.dart' as http;

import '../../../core/config/api_config.dart';
import '../../../core/utils/pagination_calculator_utils.dart';

abstract class GameSearchRepository {
  // Search for games by name
  Future<GameListEntity> fetchGames(String name);

  // fetch next page or previous page
  Future<GameListEntity> fetchPage(Uri uri);
}

//TODO: change this so I can filtrer game made by company
// will be initialized with riverpod in intent factory class
class Search extends GameSearchRepository {
  final Uri uri;

  Search()
    : uri = Uri.https(GameApiConfig.baseUrl, GameApiConfig.gamePath, {
        'key': GameApiConfig.apiKey,
        // extra search parameters
        'search_precise': 'true',
        'search_exact': 'true',
        'exclude_additions': 'true',
        'ordering': '-rating',
        'page_size': GameApiConfig.pageSize.toString(), // 40 per page
      });

  @override
  Future<GameListEntity> fetchGames(String name) async {
    final searchUri = uri.replace(
      queryParameters: {...uri.queryParameters, 'search': name},
    );
    return _fetchFromUri(searchUri);
  }

  @override
  Future<GameListEntity> fetchPage(Uri uri) => _fetchFromUri(uri);

  /// Unified helper to fetch and parse game data from a [Uri].
  Future<GameListEntity> _fetchFromUri(Uri targetUri) async {
    try {
      debugPrint('Fetching URI: $targetUri');
      final response = await http.get(targetUri);

      if (response.statusCode == 200) {
        final result = jsonDecode(response.body);

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
        throw Exception(
          'Failed to load games: Status code ${response.statusCode}',
        );
      }
    } catch (e) {
      debugPrint('Error fetching games: $e');
      throw Exception('An error occurred while fetching games');
    }
  }
}
