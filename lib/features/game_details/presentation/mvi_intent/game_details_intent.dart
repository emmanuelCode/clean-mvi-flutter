
import 'package:flutter_clean_architecture_with_mvi/features/game_details/domain/mvi_model/game_details_entity.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../mvi_view/game_details_view_event.dart';

part 'game_details_intent.g.dart';


@riverpod
class GameDetailsIntentFactory extends _$GameDetailsIntentFactory {
  @override
  GameDetailsEntity build() {
    return GameDetailsEntity(
      id: '',
      name: '',
      nameOriginal: '',
      description: '',
      released: '',
      screenShots: [],
    );
  }

void toIntent(GameDetailsViewEvent gameDetailsViewEvent) {
 switch (gameDetailsViewEvent) {
   case SeeScreenshots() : 
   return;
   case GoBackToGameSearchResults() : 
   return;
    }
  }
}
