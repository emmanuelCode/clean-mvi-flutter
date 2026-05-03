// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_details_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GameDetailsEntity _$GameDetailsEntityFromJson(Map<String, dynamic> json) =>
    _GameDetailsEntity(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      nameOriginal: json['nameOriginal'] as String?,
      description: json['description'] as String?,
      released: json['released'] as String?,
      genres: json['genres'] as String?,
      platforms: json['platforms'] as String?,
      esrbRating: json['esrbRating'] as String?,
      backgroundImage: json['background_image'] as String?,
      screenshots: (json['screenshots'] as List<dynamic>?)
          ?.map((e) => Screenshot.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GameDetailsEntityToJson(_GameDetailsEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'nameOriginal': instance.nameOriginal,
      'description': instance.description,
      'released': instance.released,
      'genres': instance.genres,
      'platforms': instance.platforms,
      'esrbRating': instance.esrbRating,
      'background_image': instance.backgroundImage,
      'screenshots': instance.screenshots,
    };

_Screenshot _$ScreenshotFromJson(Map<String, dynamic> json) => _Screenshot(
  id: (json['id'] as num).toInt(),
  image: json['image'] as String,
);

Map<String, dynamic> _$ScreenshotToJson(_Screenshot instance) =>
    <String, dynamic>{'id': instance.id, 'image': instance.image};
