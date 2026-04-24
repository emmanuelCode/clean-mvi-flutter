// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_list_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GameListEntity {

 List<GameDetailsEntity> get gameList; int get count;//total game results
// if null means no more pages
 String? get next; dynamic get previous;
/// Create a copy of GameListEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GameListEntityCopyWith<GameListEntity> get copyWith => _$GameListEntityCopyWithImpl<GameListEntity>(this as GameListEntity, _$identity);

  /// Serializes this GameListEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameListEntity&&const DeepCollectionEquality().equals(other.gameList, gameList)&&(identical(other.count, count) || other.count == count)&&(identical(other.next, next) || other.next == next)&&const DeepCollectionEquality().equals(other.previous, previous));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(gameList),count,next,const DeepCollectionEquality().hash(previous));

@override
String toString() {
  return 'GameListEntity(gameList: $gameList, count: $count, next: $next, previous: $previous)';
}


}

/// @nodoc
abstract mixin class $GameListEntityCopyWith<$Res>  {
  factory $GameListEntityCopyWith(GameListEntity value, $Res Function(GameListEntity) _then) = _$GameListEntityCopyWithImpl;
@useResult
$Res call({
 List<GameDetailsEntity> gameList, int count, String? next, dynamic previous
});




}
/// @nodoc
class _$GameListEntityCopyWithImpl<$Res>
    implements $GameListEntityCopyWith<$Res> {
  _$GameListEntityCopyWithImpl(this._self, this._then);

  final GameListEntity _self;
  final $Res Function(GameListEntity) _then;

/// Create a copy of GameListEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? gameList = null,Object? count = null,Object? next = freezed,Object? previous = freezed,}) {
  return _then(_self.copyWith(
gameList: null == gameList ? _self.gameList : gameList // ignore: cast_nullable_to_non_nullable
as List<GameDetailsEntity>,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,next: freezed == next ? _self.next : next // ignore: cast_nullable_to_non_nullable
as String?,previous: freezed == previous ? _self.previous : previous // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [GameListEntity].
extension GameListEntityPatterns on GameListEntity {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GameListEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GameListEntity() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GameListEntity value)  $default,){
final _that = this;
switch (_that) {
case _GameListEntity():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GameListEntity value)?  $default,){
final _that = this;
switch (_that) {
case _GameListEntity() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<GameDetailsEntity> gameList,  int count,  String? next,  dynamic previous)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GameListEntity() when $default != null:
return $default(_that.gameList,_that.count,_that.next,_that.previous);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<GameDetailsEntity> gameList,  int count,  String? next,  dynamic previous)  $default,) {final _that = this;
switch (_that) {
case _GameListEntity():
return $default(_that.gameList,_that.count,_that.next,_that.previous);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<GameDetailsEntity> gameList,  int count,  String? next,  dynamic previous)?  $default,) {final _that = this;
switch (_that) {
case _GameListEntity() when $default != null:
return $default(_that.gameList,_that.count,_that.next,_that.previous);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GameListEntity implements GameListEntity {
  const _GameListEntity({required final  List<GameDetailsEntity> gameList, required this.count, required this.next, this.previous}): _gameList = gameList;
  factory _GameListEntity.fromJson(Map<String, dynamic> json) => _$GameListEntityFromJson(json);

 final  List<GameDetailsEntity> _gameList;
@override List<GameDetailsEntity> get gameList {
  if (_gameList is EqualUnmodifiableListView) return _gameList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_gameList);
}

@override final  int count;
//total game results
// if null means no more pages
@override final  String? next;
@override final  dynamic previous;

/// Create a copy of GameListEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GameListEntityCopyWith<_GameListEntity> get copyWith => __$GameListEntityCopyWithImpl<_GameListEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GameListEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GameListEntity&&const DeepCollectionEquality().equals(other._gameList, _gameList)&&(identical(other.count, count) || other.count == count)&&(identical(other.next, next) || other.next == next)&&const DeepCollectionEquality().equals(other.previous, previous));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_gameList),count,next,const DeepCollectionEquality().hash(previous));

@override
String toString() {
  return 'GameListEntity(gameList: $gameList, count: $count, next: $next, previous: $previous)';
}


}

/// @nodoc
abstract mixin class _$GameListEntityCopyWith<$Res> implements $GameListEntityCopyWith<$Res> {
  factory _$GameListEntityCopyWith(_GameListEntity value, $Res Function(_GameListEntity) _then) = __$GameListEntityCopyWithImpl;
@override @useResult
$Res call({
 List<GameDetailsEntity> gameList, int count, String? next, dynamic previous
});




}
/// @nodoc
class __$GameListEntityCopyWithImpl<$Res>
    implements _$GameListEntityCopyWith<$Res> {
  __$GameListEntityCopyWithImpl(this._self, this._then);

  final _GameListEntity _self;
  final $Res Function(_GameListEntity) _then;

/// Create a copy of GameListEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? gameList = null,Object? count = null,Object? next = freezed,Object? previous = freezed,}) {
  return _then(_GameListEntity(
gameList: null == gameList ? _self._gameList : gameList // ignore: cast_nullable_to_non_nullable
as List<GameDetailsEntity>,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,next: freezed == next ? _self.next : next // ignore: cast_nullable_to_non_nullable
as String?,previous: freezed == previous ? _self.previous : previous // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

// dart format on
