// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_details_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GameDetailsEntityImpl _$$GameDetailsEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$GameDetailsEntityImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      nameOriginal: json['nameOriginal'] as String?,
      description: json['description'] as String?,
      released: json['released'] as String?,
      screenShots: (json['screenShots'] as List<dynamic>?)
          ?.map((e) => ScreenShot.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GameDetailsEntityImplToJson(
        _$GameDetailsEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'nameOriginal': instance.nameOriginal,
      'description': instance.description,
      'released': instance.released,
      'screenShots': instance.screenShots,
    };

_$ScreenShotImpl _$$ScreenShotImplFromJson(Map<String, dynamic> json) =>
    _$ScreenShotImpl(
      id: json['id'] as String,
      image: json['image'] as String,
    );

Map<String, dynamic> _$$ScreenShotImplToJson(_$ScreenShotImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
    };
