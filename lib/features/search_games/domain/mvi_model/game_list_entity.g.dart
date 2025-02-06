// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_list_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GameListEntityImpl _$$GameListEntityImplFromJson(Map<String, dynamic> json) =>
    _$GameListEntityImpl(
      gameListEntity: (json['gameListEntity'] as List<dynamic>)
          .map((e) => GameDetailsEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      count: (json['count'] as num).toInt(),
      next: (json['next'] as num?)?.toInt(),
      previous: json['previous'],
    );

Map<String, dynamic> _$$GameListEntityImplToJson(
        _$GameListEntityImpl instance) =>
    <String, dynamic>{
      'gameListEntity': instance.gameListEntity,
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
    };
