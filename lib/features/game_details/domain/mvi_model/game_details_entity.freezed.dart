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

 int get id; String get name; String? get nameOriginal; String? get description; String? get released; String? get genres; String? get platforms; String? get esrbRating;@JsonKey(name: 'background_image') String? get backgroundImage; List<Screenshot>? get screenshots;
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
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('nameOriginal', nameOriginal))..add(DiagnosticsProperty('description', description))..add(DiagnosticsProperty('released', released))..add(DiagnosticsProperty('genres', genres))..add(DiagnosticsProperty('platforms', platforms))..add(DiagnosticsProperty('esrbRating', esrbRating))..add(DiagnosticsProperty('backgroundImage', backgroundImage))..add(DiagnosticsProperty('screenshots', screenshots));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameDetailsEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.nameOriginal, nameOriginal) || other.nameOriginal == nameOriginal)&&(identical(other.description, description) || other.description == description)&&(identical(other.released, released) || other.released == released)&&(identical(other.genres, genres) || other.genres == genres)&&(identical(other.platforms, platforms) || other.platforms == platforms)&&(identical(other.esrbRating, esrbRating) || other.esrbRating == esrbRating)&&(identical(other.backgroundImage, backgroundImage) || other.backgroundImage == backgroundImage)&&const DeepCollectionEquality().equals(other.screenshots, screenshots));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,nameOriginal,description,released,genres,platforms,esrbRating,backgroundImage,const DeepCollectionEquality().hash(screenshots));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'GameDetailsEntity(id: $id, name: $name, nameOriginal: $nameOriginal, description: $description, released: $released, genres: $genres, platforms: $platforms, esrbRating: $esrbRating, backgroundImage: $backgroundImage, screenshots: $screenshots)';
}


}

/// @nodoc
abstract mixin class $GameDetailsEntityCopyWith<$Res>  {
  factory $GameDetailsEntityCopyWith(GameDetailsEntity value, $Res Function(GameDetailsEntity) _then) = _$GameDetailsEntityCopyWithImpl;
@useResult
$Res call({
 int id, String name, String? nameOriginal, String? description, String? released, String? genres, String? platforms, String? esrbRating,@JsonKey(name: 'background_image') String? backgroundImage, List<Screenshot>? screenshots
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
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? nameOriginal = freezed,Object? description = freezed,Object? released = freezed,Object? genres = freezed,Object? platforms = freezed,Object? esrbRating = freezed,Object? backgroundImage = freezed,Object? screenshots = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,nameOriginal: freezed == nameOriginal ? _self.nameOriginal : nameOriginal // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,released: freezed == released ? _self.released : released // ignore: cast_nullable_to_non_nullable
as String?,genres: freezed == genres ? _self.genres : genres // ignore: cast_nullable_to_non_nullable
as String?,platforms: freezed == platforms ? _self.platforms : platforms // ignore: cast_nullable_to_non_nullable
as String?,esrbRating: freezed == esrbRating ? _self.esrbRating : esrbRating // ignore: cast_nullable_to_non_nullable
as String?,backgroundImage: freezed == backgroundImage ? _self.backgroundImage : backgroundImage // ignore: cast_nullable_to_non_nullable
as String?,screenshots: freezed == screenshots ? _self.screenshots : screenshots // ignore: cast_nullable_to_non_nullable
as List<Screenshot>?,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String? nameOriginal,  String? description,  String? released,  String? genres,  String? platforms,  String? esrbRating, @JsonKey(name: 'background_image')  String? backgroundImage,  List<Screenshot>? screenshots)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GameDetailsEntity() when $default != null:
return $default(_that.id,_that.name,_that.nameOriginal,_that.description,_that.released,_that.genres,_that.platforms,_that.esrbRating,_that.backgroundImage,_that.screenshots);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String? nameOriginal,  String? description,  String? released,  String? genres,  String? platforms,  String? esrbRating, @JsonKey(name: 'background_image')  String? backgroundImage,  List<Screenshot>? screenshots)  $default,) {final _that = this;
switch (_that) {
case _GameDetailsEntity():
return $default(_that.id,_that.name,_that.nameOriginal,_that.description,_that.released,_that.genres,_that.platforms,_that.esrbRating,_that.backgroundImage,_that.screenshots);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String? nameOriginal,  String? description,  String? released,  String? genres,  String? platforms,  String? esrbRating, @JsonKey(name: 'background_image')  String? backgroundImage,  List<Screenshot>? screenshots)?  $default,) {final _that = this;
switch (_that) {
case _GameDetailsEntity() when $default != null:
return $default(_that.id,_that.name,_that.nameOriginal,_that.description,_that.released,_that.genres,_that.platforms,_that.esrbRating,_that.backgroundImage,_that.screenshots);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GameDetailsEntity with DiagnosticableTreeMixin implements GameDetailsEntity {
  const _GameDetailsEntity({required this.id, required this.name, required this.nameOriginal, required this.description, required this.released, required this.genres, required this.platforms, required this.esrbRating, @JsonKey(name: 'background_image') required this.backgroundImage, required final  List<Screenshot>? screenshots}): _screenshots = screenshots;
  factory _GameDetailsEntity.fromJson(Map<String, dynamic> json) => _$GameDetailsEntityFromJson(json);

@override final  int id;
@override final  String name;
@override final  String? nameOriginal;
@override final  String? description;
@override final  String? released;
@override final  String? genres;
@override final  String? platforms;
@override final  String? esrbRating;
@override@JsonKey(name: 'background_image') final  String? backgroundImage;
 final  List<Screenshot>? _screenshots;
@override List<Screenshot>? get screenshots {
  final value = _screenshots;
  if (value == null) return null;
  if (_screenshots is EqualUnmodifiableListView) return _screenshots;
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
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('nameOriginal', nameOriginal))..add(DiagnosticsProperty('description', description))..add(DiagnosticsProperty('released', released))..add(DiagnosticsProperty('genres', genres))..add(DiagnosticsProperty('platforms', platforms))..add(DiagnosticsProperty('esrbRating', esrbRating))..add(DiagnosticsProperty('backgroundImage', backgroundImage))..add(DiagnosticsProperty('screenshots', screenshots));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GameDetailsEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.nameOriginal, nameOriginal) || other.nameOriginal == nameOriginal)&&(identical(other.description, description) || other.description == description)&&(identical(other.released, released) || other.released == released)&&(identical(other.genres, genres) || other.genres == genres)&&(identical(other.platforms, platforms) || other.platforms == platforms)&&(identical(other.esrbRating, esrbRating) || other.esrbRating == esrbRating)&&(identical(other.backgroundImage, backgroundImage) || other.backgroundImage == backgroundImage)&&const DeepCollectionEquality().equals(other._screenshots, _screenshots));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,nameOriginal,description,released,genres,platforms,esrbRating,backgroundImage,const DeepCollectionEquality().hash(_screenshots));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'GameDetailsEntity(id: $id, name: $name, nameOriginal: $nameOriginal, description: $description, released: $released, genres: $genres, platforms: $platforms, esrbRating: $esrbRating, backgroundImage: $backgroundImage, screenshots: $screenshots)';
}


}

/// @nodoc
abstract mixin class _$GameDetailsEntityCopyWith<$Res> implements $GameDetailsEntityCopyWith<$Res> {
  factory _$GameDetailsEntityCopyWith(_GameDetailsEntity value, $Res Function(_GameDetailsEntity) _then) = __$GameDetailsEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String? nameOriginal, String? description, String? released, String? genres, String? platforms, String? esrbRating,@JsonKey(name: 'background_image') String? backgroundImage, List<Screenshot>? screenshots
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
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? nameOriginal = freezed,Object? description = freezed,Object? released = freezed,Object? genres = freezed,Object? platforms = freezed,Object? esrbRating = freezed,Object? backgroundImage = freezed,Object? screenshots = freezed,}) {
  return _then(_GameDetailsEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,nameOriginal: freezed == nameOriginal ? _self.nameOriginal : nameOriginal // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,released: freezed == released ? _self.released : released // ignore: cast_nullable_to_non_nullable
as String?,genres: freezed == genres ? _self.genres : genres // ignore: cast_nullable_to_non_nullable
as String?,platforms: freezed == platforms ? _self.platforms : platforms // ignore: cast_nullable_to_non_nullable
as String?,esrbRating: freezed == esrbRating ? _self.esrbRating : esrbRating // ignore: cast_nullable_to_non_nullable
as String?,backgroundImage: freezed == backgroundImage ? _self.backgroundImage : backgroundImage // ignore: cast_nullable_to_non_nullable
as String?,screenshots: freezed == screenshots ? _self._screenshots : screenshots // ignore: cast_nullable_to_non_nullable
as List<Screenshot>?,
  ));
}


}


/// @nodoc
mixin _$Screenshot implements DiagnosticableTreeMixin {

 int get id; String get image;
/// Create a copy of Screenshot
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ScreenshotCopyWith<Screenshot> get copyWith => _$ScreenshotCopyWithImpl<Screenshot>(this as Screenshot, _$identity);

  /// Serializes this Screenshot to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Screenshot'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('image', image));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Screenshot&&(identical(other.id, id) || other.id == id)&&(identical(other.image, image) || other.image == image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,image);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Screenshot(id: $id, image: $image)';
}


}

/// @nodoc
abstract mixin class $ScreenshotCopyWith<$Res>  {
  factory $ScreenshotCopyWith(Screenshot value, $Res Function(Screenshot) _then) = _$ScreenshotCopyWithImpl;
@useResult
$Res call({
 int id, String image
});




}
/// @nodoc
class _$ScreenshotCopyWithImpl<$Res>
    implements $ScreenshotCopyWith<$Res> {
  _$ScreenshotCopyWithImpl(this._self, this._then);

  final Screenshot _self;
  final $Res Function(Screenshot) _then;

/// Create a copy of Screenshot
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? image = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Screenshot].
extension ScreenshotPatterns on Screenshot {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Screenshot value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Screenshot() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Screenshot value)  $default,){
final _that = this;
switch (_that) {
case _Screenshot():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Screenshot value)?  $default,){
final _that = this;
switch (_that) {
case _Screenshot() when $default != null:
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
case _Screenshot() when $default != null:
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
case _Screenshot():
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
case _Screenshot() when $default != null:
return $default(_that.id,_that.image);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Screenshot with DiagnosticableTreeMixin implements Screenshot {
  const _Screenshot({required this.id, required this.image});
  factory _Screenshot.fromJson(Map<String, dynamic> json) => _$ScreenshotFromJson(json);

@override final  int id;
@override final  String image;

/// Create a copy of Screenshot
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ScreenshotCopyWith<_Screenshot> get copyWith => __$ScreenshotCopyWithImpl<_Screenshot>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ScreenshotToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Screenshot'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('image', image));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Screenshot&&(identical(other.id, id) || other.id == id)&&(identical(other.image, image) || other.image == image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,image);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Screenshot(id: $id, image: $image)';
}


}

/// @nodoc
abstract mixin class _$ScreenshotCopyWith<$Res> implements $ScreenshotCopyWith<$Res> {
  factory _$ScreenshotCopyWith(_Screenshot value, $Res Function(_Screenshot) _then) = __$ScreenshotCopyWithImpl;
@override @useResult
$Res call({
 int id, String image
});




}
/// @nodoc
class __$ScreenshotCopyWithImpl<$Res>
    implements _$ScreenshotCopyWith<$Res> {
  __$ScreenshotCopyWithImpl(this._self, this._then);

  final _Screenshot _self;
  final $Res Function(_Screenshot) _then;

/// Create a copy of Screenshot
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? image = null,}) {
  return _then(_Screenshot(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
