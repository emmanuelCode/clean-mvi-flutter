import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_details_entity.freezed.dart';

// for adding the fromJson and toJson methods
part 'game_details_entity.g.dart';

// this is the model from the MVI "M"
@freezed
abstract class GameDetailsEntity with _$GameDetailsEntity {
  const factory GameDetailsEntity({
    required int id,
    required String name,
    required String? nameOriginal,
    required String? description,
    required String? released,
    required String? genres,
    required String? platforms,
    required String? esrbRating,
    // todo:implement developer, esrb_rating, genres
    @JsonKey(name: 'background_image') required String? backgroundImage,
    @JsonKey(name: 'short_screenshots') required List<ScreenShot>? screenShots,
  }) = _GameDetailsEntity;

  factory GameDetailsEntity.fromJson(Map<String, Object?> json) =>
      _$GameDetailsEntityFromJson(json);
}

@freezed
abstract class ScreenShot with _$ScreenShot {
  const factory ScreenShot({
    required int id,
    required String image,
  }) = _ScreenShot;

  factory ScreenShot.fromJson(Map<String, dynamic> json) =>
      _$ScreenShotFromJson(json);
}
