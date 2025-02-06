import 'package:flutter_clean_architecture_with_mvi/features/search_games/domain/mvi_model/game_list_entity.dart';
import 'package:flutter_clean_architecture_with_mvi/features/search_games/presentation/mvi_view/game_search_view_event.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'game_search_intent.g.dart';

@riverpod
class GameSearchIntentFactory extends _$GameSearchIntentFactory {
  @override
  GameListEntity build() {
    return GameListEntity(
      count: 0,
      next: null,
      previous: null,
      gameListEntity: [],
    );
  }

  void toIntent(GameSearchViewEvent gameSearchViewEvent) {
    state = switch (gameSearchViewEvent) {
      SearchGame() => state.copyWith(),
      NextPage() => state.copyWith(),
      PreviousPage() => state.copyWith(),
    };
  }
}
