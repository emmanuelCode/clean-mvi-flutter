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
      screenShots: (json['short_screenshots'] as List<dynamic>?)
          ?.map((e) => ScreenShot.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GameDetailsEntityToJson(_GameDetailsEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'nameOriginal': instance.nameOriginal,
      'description': instance.description,
      'released': instance.released,
      'short_screenshots': instance.screenShots,
    };

_ScreenShot _$ScreenShotFromJson(Map<String, dynamic> json) => _ScreenShot(
  id: (json['id'] as num).toInt(),
  image: json['image'] as String,
);

Map<String, dynamic> _$ScreenShotToJson(_ScreenShot instance) =>
    <String, dynamic>{'id': instance.id, 'image': instance.image};
