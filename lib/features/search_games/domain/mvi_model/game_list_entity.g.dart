// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_list_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GameListEntity _$GameListEntityFromJson(Map<String, dynamic> json) =>
    _GameListEntity(
      gameList: (json['gameList'] as List<dynamic>)
          .map((e) => GameDetailsEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      count: (json['count'] as num).toInt(),
      totalPages: (json['totalPages'] as num).toInt(),
      currentPage: (json['currentPage'] as num).toInt(),
      next: json['next'] as String?,
      previous: json['previous'] as String?,
    );

Map<String, dynamic> _$GameListEntityToJson(_GameListEntity instance) =>
    <String, dynamic>{
      'gameList': instance.gameList,
      'count': instance.count,
      'totalPages': instance.totalPages,
      'currentPage': instance.currentPage,
      'next': instance.next,
      'previous': instance.previous,
    };
