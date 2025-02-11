import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../game_details/domain/mvi_model/game_details_entity.dart';

part 'game_list_entity.freezed.dart';

// for adding the fromJson and toJson methods
part 'game_list_entity.g.dart';

// this is the model from the MVI "M"
@freezed
class GameListEntity with _$GameListEntity {
  const factory GameListEntity({
    required List<GameDetailsEntity> gameList,
    required int count,//total game results
    // if null means no more pages
    required String? next, previous, // represent page from the api
  }) = _GameListEntity;

  factory GameListEntity.fromJson(Map<String, Object?> json) =>
      _$GameListEntityFromJson(json);
}
