import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../game_details/domain/mvi_model/game_details_entity.dart';

part 'game_list_entity.freezed.dart';

// for adding the fromJson and toJson methods
part 'game_list_entity.g.dart';

// this is the model from the MVI "M"
// I'll also list what my view would need inside this entity,
// so I can just return this from the repository and use it in the view
// without doing any business logic(algorithm or calculations) in the view or intent factory
@freezed
abstract class GameListEntity with _$GameListEntity {
  const factory GameListEntity({
    required List<GameEntity> gameList,
    //total game results but might be unnecessary if we don't use it in the views
    required int count,
    required int totalPages,
    required int currentPage,
    // if null means no more pages
    required  String? next, String? previous, // represent page from the api
  }) = _GameListEntity;

  factory GameListEntity.fromJson(Map<String, Object?> json) =>
      _$GameListEntityFromJson(json);
}

@freezed
abstract class GameEntity with _$GameEntity {
  const factory GameEntity({
    required int id,
    required String name,
    @JsonKey(name: 'background_image') required String? backgroundImage,
    }) = _GameEntity;

  factory GameEntity.fromJson(Map<String, Object?> json) =>
      _$GameEntityFromJson(json);
}

