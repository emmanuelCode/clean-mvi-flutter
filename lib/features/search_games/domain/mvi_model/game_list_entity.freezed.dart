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

 List<GameEntity> get gameList;//total game results but might be unnecessary if we don't use it in the views
 int get count; int get totalPages; int get currentPage;// if null means no more pages
 String? get next; String? get previous;
/// Create a copy of GameListEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GameListEntityCopyWith<GameListEntity> get copyWith => _$GameListEntityCopyWithImpl<GameListEntity>(this as GameListEntity, _$identity);

  /// Serializes this GameListEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameListEntity&&const DeepCollectionEquality().equals(other.gameList, gameList)&&(identical(other.count, count) || other.count == count)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.next, next) || other.next == next)&&(identical(other.previous, previous) || other.previous == previous));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(gameList),count,totalPages,currentPage,next,previous);

@override
String toString() {
  return 'GameListEntity(gameList: $gameList, count: $count, totalPages: $totalPages, currentPage: $currentPage, next: $next, previous: $previous)';
}


}

/// @nodoc
abstract mixin class $GameListEntityCopyWith<$Res>  {
  factory $GameListEntityCopyWith(GameListEntity value, $Res Function(GameListEntity) _then) = _$GameListEntityCopyWithImpl;
@useResult
$Res call({
 List<GameEntity> gameList, int count, int totalPages, int currentPage, String? next, String? previous
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
@pragma('vm:prefer-inline') @override $Res call({Object? gameList = null,Object? count = null,Object? totalPages = null,Object? currentPage = null,Object? next = freezed,Object? previous = freezed,}) {
  return _then(_self.copyWith(
gameList: null == gameList ? _self.gameList : gameList // ignore: cast_nullable_to_non_nullable
as List<GameEntity>,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,next: freezed == next ? _self.next : next // ignore: cast_nullable_to_non_nullable
as String?,previous: freezed == previous ? _self.previous : previous // ignore: cast_nullable_to_non_nullable
as String?,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<GameEntity> gameList,  int count,  int totalPages,  int currentPage,  String? next,  String? previous)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GameListEntity() when $default != null:
return $default(_that.gameList,_that.count,_that.totalPages,_that.currentPage,_that.next,_that.previous);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<GameEntity> gameList,  int count,  int totalPages,  int currentPage,  String? next,  String? previous)  $default,) {final _that = this;
switch (_that) {
case _GameListEntity():
return $default(_that.gameList,_that.count,_that.totalPages,_that.currentPage,_that.next,_that.previous);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<GameEntity> gameList,  int count,  int totalPages,  int currentPage,  String? next,  String? previous)?  $default,) {final _that = this;
switch (_that) {
case _GameListEntity() when $default != null:
return $default(_that.gameList,_that.count,_that.totalPages,_that.currentPage,_that.next,_that.previous);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GameListEntity implements GameListEntity {
  const _GameListEntity({required final  List<GameEntity> gameList, required this.count, required this.totalPages, required this.currentPage, required this.next, this.previous}): _gameList = gameList;
  factory _GameListEntity.fromJson(Map<String, dynamic> json) => _$GameListEntityFromJson(json);

 final  List<GameEntity> _gameList;
@override List<GameEntity> get gameList {
  if (_gameList is EqualUnmodifiableListView) return _gameList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_gameList);
}

//total game results but might be unnecessary if we don't use it in the views
@override final  int count;
@override final  int totalPages;
@override final  int currentPage;
// if null means no more pages
@override final  String? next;
@override final  String? previous;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GameListEntity&&const DeepCollectionEquality().equals(other._gameList, _gameList)&&(identical(other.count, count) || other.count == count)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.next, next) || other.next == next)&&(identical(other.previous, previous) || other.previous == previous));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_gameList),count,totalPages,currentPage,next,previous);

@override
String toString() {
  return 'GameListEntity(gameList: $gameList, count: $count, totalPages: $totalPages, currentPage: $currentPage, next: $next, previous: $previous)';
}


}

/// @nodoc
abstract mixin class _$GameListEntityCopyWith<$Res> implements $GameListEntityCopyWith<$Res> {
  factory _$GameListEntityCopyWith(_GameListEntity value, $Res Function(_GameListEntity) _then) = __$GameListEntityCopyWithImpl;
@override @useResult
$Res call({
 List<GameEntity> gameList, int count, int totalPages, int currentPage, String? next, String? previous
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
@override @pragma('vm:prefer-inline') $Res call({Object? gameList = null,Object? count = null,Object? totalPages = null,Object? currentPage = null,Object? next = freezed,Object? previous = freezed,}) {
  return _then(_GameListEntity(
gameList: null == gameList ? _self._gameList : gameList // ignore: cast_nullable_to_non_nullable
as List<GameEntity>,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,next: freezed == next ? _self.next : next // ignore: cast_nullable_to_non_nullable
as String?,previous: freezed == previous ? _self.previous : previous // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$GameEntity {

 int get id; String get name;@JsonKey(name: 'background_image') String? get backgroundImage;
/// Create a copy of GameEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GameEntityCopyWith<GameEntity> get copyWith => _$GameEntityCopyWithImpl<GameEntity>(this as GameEntity, _$identity);

  /// Serializes this GameEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.backgroundImage, backgroundImage) || other.backgroundImage == backgroundImage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,backgroundImage);

@override
String toString() {
  return 'GameEntity(id: $id, name: $name, backgroundImage: $backgroundImage)';
}


}

/// @nodoc
abstract mixin class $GameEntityCopyWith<$Res>  {
  factory $GameEntityCopyWith(GameEntity value, $Res Function(GameEntity) _then) = _$GameEntityCopyWithImpl;
@useResult
$Res call({
 int id, String name,@JsonKey(name: 'background_image') String? backgroundImage
});




}
/// @nodoc
class _$GameEntityCopyWithImpl<$Res>
    implements $GameEntityCopyWith<$Res> {
  _$GameEntityCopyWithImpl(this._self, this._then);

  final GameEntity _self;
  final $Res Function(GameEntity) _then;

/// Create a copy of GameEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? backgroundImage = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,backgroundImage: freezed == backgroundImage ? _self.backgroundImage : backgroundImage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [GameEntity].
extension GameEntityPatterns on GameEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GameEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GameEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GameEntity value)  $default,){
final _that = this;
switch (_that) {
case _GameEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GameEntity value)?  $default,){
final _that = this;
switch (_that) {
case _GameEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name, @JsonKey(name: 'background_image')  String? backgroundImage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GameEntity() when $default != null:
return $default(_that.id,_that.name,_that.backgroundImage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name, @JsonKey(name: 'background_image')  String? backgroundImage)  $default,) {final _that = this;
switch (_that) {
case _GameEntity():
return $default(_that.id,_that.name,_that.backgroundImage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name, @JsonKey(name: 'background_image')  String? backgroundImage)?  $default,) {final _that = this;
switch (_that) {
case _GameEntity() when $default != null:
return $default(_that.id,_that.name,_that.backgroundImage);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GameEntity implements GameEntity {
  const _GameEntity({required this.id, required this.name, @JsonKey(name: 'background_image') required this.backgroundImage});
  factory _GameEntity.fromJson(Map<String, dynamic> json) => _$GameEntityFromJson(json);

@override final  int id;
@override final  String name;
@override@JsonKey(name: 'background_image') final  String? backgroundImage;

/// Create a copy of GameEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GameEntityCopyWith<_GameEntity> get copyWith => __$GameEntityCopyWithImpl<_GameEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GameEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GameEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.backgroundImage, backgroundImage) || other.backgroundImage == backgroundImage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,backgroundImage);

@override
String toString() {
  return 'GameEntity(id: $id, name: $name, backgroundImage: $backgroundImage)';
}


}

/// @nodoc
abstract mixin class _$GameEntityCopyWith<$Res> implements $GameEntityCopyWith<$Res> {
  factory _$GameEntityCopyWith(_GameEntity value, $Res Function(_GameEntity) _then) = __$GameEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, String name,@JsonKey(name: 'background_image') String? backgroundImage
});




}
/// @nodoc
class __$GameEntityCopyWithImpl<$Res>
    implements _$GameEntityCopyWith<$Res> {
  __$GameEntityCopyWithImpl(this._self, this._then);

  final _GameEntity _self;
  final $Res Function(_GameEntity) _then;

/// Create a copy of GameEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? backgroundImage = freezed,}) {
  return _then(_GameEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,backgroundImage: freezed == backgroundImage ? _self.backgroundImage : backgroundImage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
