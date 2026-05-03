import 'package:flutter/foundation.dart';
import 'package:flutter_clean_architecture_with_mvi/features/game_details/domain/mvi_model/game_details_entity.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/game_details_repository.dart';
import '../mvi_view/game_details_view_event.dart';

part 'game_details_intent.g.dart';

@riverpod
class GameDetailsIntentFactory extends _$GameDetailsIntentFactory {
  late final GameDetailsRepository _gameDetailsRepository;
  @override
  Future<GameDetailsEntity> build(int gameId) async {
    // initialize repository api
    _gameDetailsRepository = Game(gameId);

    return await _gameDetailsRepository.getGameDetails(gameId);
  }

  void toIntent(GameDetailsViewEvent gameDetailsViewEvent) async {
    switch (gameDetailsViewEvent) {
      case LoadGameDetails(gameId: final gameId):
        state = await AsyncValue.guard(() => _loadGameDetails(gameId));
      case SeeScreenshots():
      debugPrint('See Screenshots');
      return;
    }
  }

  Future<GameDetailsEntity> _loadGameDetails(int gameId) async {
    return _gameDetailsRepository.getGameDetails(gameId);
  }
}
