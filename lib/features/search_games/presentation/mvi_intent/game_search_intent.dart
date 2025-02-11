import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture_with_mvi/features/game_details/presentation/mvi_view/game_details_screen.dart';
import 'package:flutter_clean_architecture_with_mvi/features/search_games/data/game_search_repository.dart';
import 'package:flutter_clean_architecture_with_mvi/features/search_games/domain/mvi_model/game_list_entity.dart';
import 'package:flutter_clean_architecture_with_mvi/features/search_games/presentation/mvi_view/game_search_view_event.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'game_search_intent.g.dart';

@riverpod
class GameSearchIntentFactory extends _$GameSearchIntentFactory {
  late final Search _gameSearchRepository;
  @override
  GameListEntity build() {
    // initialize repository api
    _gameSearchRepository = Search();

    return GameListEntity(
      count: 0,
      next: null,
      previous: null,
      gameList: [],
    );
  }

  void toIntent(GameSearchViewEvent gameSearchViewEvent) async {
    //TODO: load game list state Async guard
    switch (gameSearchViewEvent) {
      case SearchGame(name: final name):
        state = await _gameSearchRepository.fetchGames(name);
      case LoadPage(uri: final uri):
        state = await _gameSearchRepository.fetchPage(uri);
      case SelectGame(context: final context):
        Navigator.push(context, MaterialPageRoute(builder: (context) => GameDetailsScreen()));
    }
  }
}
