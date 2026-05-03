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
    @JsonKey(name: 'background_image') required String? backgroundImage,
    required List<Screenshot>? screenshots,
  }) = _GameDetailsEntity;

  factory GameDetailsEntity.fromJson(Map<String, Object?> json) =>
      _$GameDetailsEntityFromJson(json);
}

@freezed
abstract class Screenshot with _$Screenshot {
  const factory Screenshot({
    required int id,
    required String image,
  }) = _Screenshot;

  factory Screenshot.fromJson(Map<String, dynamic> json) =>
      _$ScreenshotFromJson(json);
}
