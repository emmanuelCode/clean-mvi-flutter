import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_details_entity.freezed.dart';

// for adding the fromJson and toJson methods
part 'game_details_entity.g.dart';

// this is the model from the MVI "M"
@freezed
class GameDetailsEntity with _$GameDetailsEntity {
  const factory GameDetailsEntity({
    required String id,
    required String name,
    required String nameOriginal,
    required String description,
    required String released,
    required List<ScreenShot> screenShots,
  }) = _GameDetailsEntity;

  factory GameDetailsEntity.fromJson(Map<String, Object?> json) =>
      _$GameDetailsEntityFromJson(json);
}

@freezed
class ScreenShot with _$ScreenShot {
  //short_screenshots in api
  const factory ScreenShot({
    required String id,
    required String image,
  }) = _ScreenShot;

  factory ScreenShot.fromJson(Map<String, dynamic> json) =>
      _$ScreenShotFromJson(json);
}
