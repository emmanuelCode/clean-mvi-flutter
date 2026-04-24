// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_details_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GameDetailsEntity implements DiagnosticableTreeMixin {

 int get id; String get name; String? get nameOriginal; String? get description; String? get released;@JsonKey(name: 'short_screenshots') List<ScreenShot>? get screenShots;
/// Create a copy of GameDetailsEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GameDetailsEntityCopyWith<GameDetailsEntity> get copyWith => _$GameDetailsEntityCopyWithImpl<GameDetailsEntity>(this as GameDetailsEntity, _$identity);

  /// Serializes this GameDetailsEntity to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'GameDetailsEntity'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('nameOriginal', nameOriginal))..add(DiagnosticsProperty('description', description))..add(DiagnosticsProperty('released', released))..add(DiagnosticsProperty('screenShots', screenShots));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameDetailsEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.nameOriginal, nameOriginal) || other.nameOriginal == nameOriginal)&&(identical(other.description, description) || other.description == description)&&(identical(other.released, released) || other.released == released)&&const DeepCollectionEquality().equals(other.screenShots, screenShots));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,nameOriginal,description,released,const DeepCollectionEquality().hash(screenShots));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'GameDetailsEntity(id: $id, name: $name, nameOriginal: $nameOriginal, description: $description, released: $released, screenShots: $screenShots)';
}


}

/// @nodoc
abstract mixin class $GameDetailsEntityCopyWith<$Res>  {
  factory $GameDetailsEntityCopyWith(GameDetailsEntity value, $Res Function(GameDetailsEntity) _then) = _$GameDetailsEntityCopyWithImpl;
@useResult
$Res call({
 int id, String name, String? nameOriginal, String? description, String? released,@JsonKey(name: 'short_screenshots') List<ScreenShot>? screenShots
});




}
/// @nodoc
class _$GameDetailsEntityCopyWithImpl<$Res>
    implements $GameDetailsEntityCopyWith<$Res> {
  _$GameDetailsEntityCopyWithImpl(this._self, this._then);

  final GameDetailsEntity _self;
  final $Res Function(GameDetailsEntity) _then;

/// Create a copy of GameDetailsEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? nameOriginal = freezed,Object? description = freezed,Object? released = freezed,Object? screenShots = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,nameOriginal: freezed == nameOriginal ? _self.nameOriginal : nameOriginal // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,released: freezed == released ? _self.released : released // ignore: cast_nullable_to_non_nullable
as String?,screenShots: freezed == screenShots ? _self.screenShots : screenShots // ignore: cast_nullable_to_non_nullable
as List<ScreenShot>?,
  ));
}

}


/// Adds pattern-matching-related methods to [GameDetailsEntity].
extension GameDetailsEntityPatterns on GameDetailsEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GameDetailsEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GameDetailsEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GameDetailsEntity value)  $default,){
final _that = this;
switch (_that) {
case _GameDetailsEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GameDetailsEntity value)?  $default,){
final _that = this;
switch (_that) {
case _GameDetailsEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String? nameOriginal,  String? description,  String? released, @JsonKey(name: 'short_screenshots')  List<ScreenShot>? screenShots)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GameDetailsEntity() when $default != null:
return $default(_that.id,_that.name,_that.nameOriginal,_that.description,_that.released,_that.screenShots);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String? nameOriginal,  String? description,  String? released, @JsonKey(name: 'short_screenshots')  List<ScreenShot>? screenShots)  $default,) {final _that = this;
switch (_that) {
case _GameDetailsEntity():
return $default(_that.id,_that.name,_that.nameOriginal,_that.description,_that.released,_that.screenShots);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String? nameOriginal,  String? description,  String? released, @JsonKey(name: 'short_screenshots')  List<ScreenShot>? screenShots)?  $default,) {final _that = this;
switch (_that) {
case _GameDetailsEntity() when $default != null:
return $default(_that.id,_that.name,_that.nameOriginal,_that.description,_that.released,_that.screenShots);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GameDetailsEntity with DiagnosticableTreeMixin implements GameDetailsEntity {
  const _GameDetailsEntity({required this.id, required this.name, required this.nameOriginal, required this.description, required this.released, @JsonKey(name: 'short_screenshots') required final  List<ScreenShot>? screenShots}): _screenShots = screenShots;
  factory _GameDetailsEntity.fromJson(Map<String, dynamic> json) => _$GameDetailsEntityFromJson(json);

@override final  int id;
@override final  String name;
@override final  String? nameOriginal;
@override final  String? description;
@override final  String? released;
 final  List<ScreenShot>? _screenShots;
@override@JsonKey(name: 'short_screenshots') List<ScreenShot>? get screenShots {
  final value = _screenShots;
  if (value == null) return null;
  if (_screenShots is EqualUnmodifiableListView) return _screenShots;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of GameDetailsEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GameDetailsEntityCopyWith<_GameDetailsEntity> get copyWith => __$GameDetailsEntityCopyWithImpl<_GameDetailsEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GameDetailsEntityToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'GameDetailsEntity'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('nameOriginal', nameOriginal))..add(DiagnosticsProperty('description', description))..add(DiagnosticsProperty('released', released))..add(DiagnosticsProperty('screenShots', screenShots));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GameDetailsEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.nameOriginal, nameOriginal) || other.nameOriginal == nameOriginal)&&(identical(other.description, description) || other.description == description)&&(identical(other.released, released) || other.released == released)&&const DeepCollectionEquality().equals(other._screenShots, _screenShots));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,nameOriginal,description,released,const DeepCollectionEquality().hash(_screenShots));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'GameDetailsEntity(id: $id, name: $name, nameOriginal: $nameOriginal, description: $description, released: $released, screenShots: $screenShots)';
}


}

/// @nodoc
abstract mixin class _$GameDetailsEntityCopyWith<$Res> implements $GameDetailsEntityCopyWith<$Res> {
  factory _$GameDetailsEntityCopyWith(_GameDetailsEntity value, $Res Function(_GameDetailsEntity) _then) = __$GameDetailsEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String? nameOriginal, String? description, String? released,@JsonKey(name: 'short_screenshots') List<ScreenShot>? screenShots
});




}
/// @nodoc
class __$GameDetailsEntityCopyWithImpl<$Res>
    implements _$GameDetailsEntityCopyWith<$Res> {
  __$GameDetailsEntityCopyWithImpl(this._self, this._then);

  final _GameDetailsEntity _self;
  final $Res Function(_GameDetailsEntity) _then;

/// Create a copy of GameDetailsEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? nameOriginal = freezed,Object? description = freezed,Object? released = freezed,Object? screenShots = freezed,}) {
  return _then(_GameDetailsEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,nameOriginal: freezed == nameOriginal ? _self.nameOriginal : nameOriginal // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,released: freezed == released ? _self.released : released // ignore: cast_nullable_to_non_nullable
as String?,screenShots: freezed == screenShots ? _self._screenShots : screenShots // ignore: cast_nullable_to_non_nullable
as List<ScreenShot>?,
  ));
}


}


/// @nodoc
mixin _$ScreenShot implements DiagnosticableTreeMixin {

 int get id; String get image;
/// Create a copy of ScreenShot
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ScreenShotCopyWith<ScreenShot> get copyWith => _$ScreenShotCopyWithImpl<ScreenShot>(this as ScreenShot, _$identity);

  /// Serializes this ScreenShot to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ScreenShot'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('image', image));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ScreenShot&&(identical(other.id, id) || other.id == id)&&(identical(other.image, image) || other.image == image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,image);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ScreenShot(id: $id, image: $image)';
}


}

/// @nodoc
abstract mixin class $ScreenShotCopyWith<$Res>  {
  factory $ScreenShotCopyWith(ScreenShot value, $Res Function(ScreenShot) _then) = _$ScreenShotCopyWithImpl;
@useResult
$Res call({
 int id, String image
});




}
/// @nodoc
class _$ScreenShotCopyWithImpl<$Res>
    implements $ScreenShotCopyWith<$Res> {
  _$ScreenShotCopyWithImpl(this._self, this._then);

  final ScreenShot _self;
  final $Res Function(ScreenShot) _then;

/// Create a copy of ScreenShot
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? image = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ScreenShot].
extension ScreenShotPatterns on ScreenShot {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ScreenShot value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ScreenShot() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ScreenShot value)  $default,){
final _that = this;
switch (_that) {
case _ScreenShot():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ScreenShot value)?  $default,){
final _that = this;
switch (_that) {
case _ScreenShot() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String image)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ScreenShot() when $default != null:
return $default(_that.id,_that.image);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String image)  $default,) {final _that = this;
switch (_that) {
case _ScreenShot():
return $default(_that.id,_that.image);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String image)?  $default,) {final _that = this;
switch (_that) {
case _ScreenShot() when $default != null:
return $default(_that.id,_that.image);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ScreenShot with DiagnosticableTreeMixin implements ScreenShot {
  const _ScreenShot({required this.id, required this.image});
  factory _ScreenShot.fromJson(Map<String, dynamic> json) => _$ScreenShotFromJson(json);

@override final  int id;
@override final  String image;

/// Create a copy of ScreenShot
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ScreenShotCopyWith<_ScreenShot> get copyWith => __$ScreenShotCopyWithImpl<_ScreenShot>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ScreenShotToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ScreenShot'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('image', image));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ScreenShot&&(identical(other.id, id) || other.id == id)&&(identical(other.image, image) || other.image == image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,image);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ScreenShot(id: $id, image: $image)';
}


}

/// @nodoc
abstract mixin class _$ScreenShotCopyWith<$Res> implements $ScreenShotCopyWith<$Res> {
  factory _$ScreenShotCopyWith(_ScreenShot value, $Res Function(_ScreenShot) _then) = __$ScreenShotCopyWithImpl;
@override @useResult
$Res call({
 int id, String image
});




}
/// @nodoc
class __$ScreenShotCopyWithImpl<$Res>
    implements _$ScreenShotCopyWith<$Res> {
  __$ScreenShotCopyWithImpl(this._self, this._then);

  final _ScreenShot _self;
  final $Res Function(_ScreenShot) _then;

/// Create a copy of ScreenShot
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? image = null,}) {
  return _then(_ScreenShot(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
