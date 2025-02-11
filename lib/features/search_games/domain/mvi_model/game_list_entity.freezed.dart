// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_list_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GameListEntity _$GameListEntityFromJson(Map<String, dynamic> json) {
  return _GameListEntity.fromJson(json);
}

/// @nodoc
mixin _$GameListEntity {
  List<GameDetailsEntity> get gameList => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError; //total game results
// if null means no more pages
  String? get next => throw _privateConstructorUsedError;
  dynamic get previous => throw _privateConstructorUsedError;

  /// Serializes this GameListEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GameListEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GameListEntityCopyWith<GameListEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameListEntityCopyWith<$Res> {
  factory $GameListEntityCopyWith(
          GameListEntity value, $Res Function(GameListEntity) then) =
      _$GameListEntityCopyWithImpl<$Res, GameListEntity>;
  @useResult
  $Res call(
      {List<GameDetailsEntity> gameList,
      int count,
      String? next,
      dynamic previous});
}

/// @nodoc
class _$GameListEntityCopyWithImpl<$Res, $Val extends GameListEntity>
    implements $GameListEntityCopyWith<$Res> {
  _$GameListEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GameListEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameList = null,
    Object? count = null,
    Object? next = freezed,
    Object? previous = freezed,
  }) {
    return _then(_value.copyWith(
      gameList: null == gameList
          ? _value.gameList
          : gameList // ignore: cast_nullable_to_non_nullable
              as List<GameDetailsEntity>,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GameListEntityImplCopyWith<$Res>
    implements $GameListEntityCopyWith<$Res> {
  factory _$$GameListEntityImplCopyWith(_$GameListEntityImpl value,
          $Res Function(_$GameListEntityImpl) then) =
      __$$GameListEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<GameDetailsEntity> gameList,
      int count,
      String? next,
      dynamic previous});
}

/// @nodoc
class __$$GameListEntityImplCopyWithImpl<$Res>
    extends _$GameListEntityCopyWithImpl<$Res, _$GameListEntityImpl>
    implements _$$GameListEntityImplCopyWith<$Res> {
  __$$GameListEntityImplCopyWithImpl(
      _$GameListEntityImpl _value, $Res Function(_$GameListEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameListEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameList = null,
    Object? count = null,
    Object? next = freezed,
    Object? previous = freezed,
  }) {
    return _then(_$GameListEntityImpl(
      gameList: null == gameList
          ? _value._gameList
          : gameList // ignore: cast_nullable_to_non_nullable
              as List<GameDetailsEntity>,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: freezed == previous ? _value.previous! : previous,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GameListEntityImpl implements _GameListEntity {
  const _$GameListEntityImpl(
      {required final List<GameDetailsEntity> gameList,
      required this.count,
      required this.next,
      this.previous})
      : _gameList = gameList;

  factory _$GameListEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$GameListEntityImplFromJson(json);

  final List<GameDetailsEntity> _gameList;
  @override
  List<GameDetailsEntity> get gameList {
    if (_gameList is EqualUnmodifiableListView) return _gameList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_gameList);
  }

  @override
  final int count;
//total game results
// if null means no more pages
  @override
  final String? next;
  @override
  final dynamic previous;

  @override
  String toString() {
    return 'GameListEntity(gameList: $gameList, count: $count, next: $next, previous: $previous)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameListEntityImpl &&
            const DeepCollectionEquality().equals(other._gameList, _gameList) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.next, next) || other.next == next) &&
            const DeepCollectionEquality().equals(other.previous, previous));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_gameList),
      count,
      next,
      const DeepCollectionEquality().hash(previous));

  /// Create a copy of GameListEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GameListEntityImplCopyWith<_$GameListEntityImpl> get copyWith =>
      __$$GameListEntityImplCopyWithImpl<_$GameListEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GameListEntityImplToJson(
      this,
    );
  }
}

abstract class _GameListEntity implements GameListEntity {
  const factory _GameListEntity(
      {required final List<GameDetailsEntity> gameList,
      required final int count,
      required final String? next,
      final dynamic previous}) = _$GameListEntityImpl;

  factory _GameListEntity.fromJson(Map<String, dynamic> json) =
      _$GameListEntityImpl.fromJson;

  @override
  List<GameDetailsEntity> get gameList;
  @override
  int get count; //total game results
// if null means no more pages
  @override
  String? get next;
  @override
  dynamic get previous;

  /// Create a copy of GameListEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GameListEntityImplCopyWith<_$GameListEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
