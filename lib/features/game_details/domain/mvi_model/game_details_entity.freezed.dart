// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_details_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GameDetailsEntity _$GameDetailsEntityFromJson(Map<String, dynamic> json) {
  return _GameDetailsEntity.fromJson(json);
}

/// @nodoc
mixin _$GameDetailsEntity {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get nameOriginal => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get released => throw _privateConstructorUsedError;
  List<ScreenShot> get screenShots => throw _privateConstructorUsedError;

  /// Serializes this GameDetailsEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GameDetailsEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GameDetailsEntityCopyWith<GameDetailsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameDetailsEntityCopyWith<$Res> {
  factory $GameDetailsEntityCopyWith(
          GameDetailsEntity value, $Res Function(GameDetailsEntity) then) =
      _$GameDetailsEntityCopyWithImpl<$Res, GameDetailsEntity>;
  @useResult
  $Res call(
      {String id,
      String name,
      String nameOriginal,
      String description,
      String released,
      List<ScreenShot> screenShots});
}

/// @nodoc
class _$GameDetailsEntityCopyWithImpl<$Res, $Val extends GameDetailsEntity>
    implements $GameDetailsEntityCopyWith<$Res> {
  _$GameDetailsEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GameDetailsEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? nameOriginal = null,
    Object? description = null,
    Object? released = null,
    Object? screenShots = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      nameOriginal: null == nameOriginal
          ? _value.nameOriginal
          : nameOriginal // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      released: null == released
          ? _value.released
          : released // ignore: cast_nullable_to_non_nullable
              as String,
      screenShots: null == screenShots
          ? _value.screenShots
          : screenShots // ignore: cast_nullable_to_non_nullable
              as List<ScreenShot>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GameDetailsEntityImplCopyWith<$Res>
    implements $GameDetailsEntityCopyWith<$Res> {
  factory _$$GameDetailsEntityImplCopyWith(_$GameDetailsEntityImpl value,
          $Res Function(_$GameDetailsEntityImpl) then) =
      __$$GameDetailsEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String nameOriginal,
      String description,
      String released,
      List<ScreenShot> screenShots});
}

/// @nodoc
class __$$GameDetailsEntityImplCopyWithImpl<$Res>
    extends _$GameDetailsEntityCopyWithImpl<$Res, _$GameDetailsEntityImpl>
    implements _$$GameDetailsEntityImplCopyWith<$Res> {
  __$$GameDetailsEntityImplCopyWithImpl(_$GameDetailsEntityImpl _value,
      $Res Function(_$GameDetailsEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameDetailsEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? nameOriginal = null,
    Object? description = null,
    Object? released = null,
    Object? screenShots = null,
  }) {
    return _then(_$GameDetailsEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      nameOriginal: null == nameOriginal
          ? _value.nameOriginal
          : nameOriginal // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      released: null == released
          ? _value.released
          : released // ignore: cast_nullable_to_non_nullable
              as String,
      screenShots: null == screenShots
          ? _value._screenShots
          : screenShots // ignore: cast_nullable_to_non_nullable
              as List<ScreenShot>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GameDetailsEntityImpl
    with DiagnosticableTreeMixin
    implements _GameDetailsEntity {
  const _$GameDetailsEntityImpl(
      {required this.id,
      required this.name,
      required this.nameOriginal,
      required this.description,
      required this.released,
      required final List<ScreenShot> screenShots})
      : _screenShots = screenShots;

  factory _$GameDetailsEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$GameDetailsEntityImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String nameOriginal;
  @override
  final String description;
  @override
  final String released;
  final List<ScreenShot> _screenShots;
  @override
  List<ScreenShot> get screenShots {
    if (_screenShots is EqualUnmodifiableListView) return _screenShots;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_screenShots);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GameDetailsEntity(id: $id, name: $name, nameOriginal: $nameOriginal, description: $description, released: $released, screenShots: $screenShots)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GameDetailsEntity'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('nameOriginal', nameOriginal))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('released', released))
      ..add(DiagnosticsProperty('screenShots', screenShots));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameDetailsEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.nameOriginal, nameOriginal) ||
                other.nameOriginal == nameOriginal) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.released, released) ||
                other.released == released) &&
            const DeepCollectionEquality()
                .equals(other._screenShots, _screenShots));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, nameOriginal,
      description, released, const DeepCollectionEquality().hash(_screenShots));

  /// Create a copy of GameDetailsEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GameDetailsEntityImplCopyWith<_$GameDetailsEntityImpl> get copyWith =>
      __$$GameDetailsEntityImplCopyWithImpl<_$GameDetailsEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GameDetailsEntityImplToJson(
      this,
    );
  }
}

abstract class _GameDetailsEntity implements GameDetailsEntity {
  const factory _GameDetailsEntity(
      {required final String id,
      required final String name,
      required final String nameOriginal,
      required final String description,
      required final String released,
      required final List<ScreenShot> screenShots}) = _$GameDetailsEntityImpl;

  factory _GameDetailsEntity.fromJson(Map<String, dynamic> json) =
      _$GameDetailsEntityImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get nameOriginal;
  @override
  String get description;
  @override
  String get released;
  @override
  List<ScreenShot> get screenShots;

  /// Create a copy of GameDetailsEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GameDetailsEntityImplCopyWith<_$GameDetailsEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ScreenShot _$ScreenShotFromJson(Map<String, dynamic> json) {
  return _ScreenShot.fromJson(json);
}

/// @nodoc
mixin _$ScreenShot {
  String get id => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;

  /// Serializes this ScreenShot to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ScreenShot
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScreenShotCopyWith<ScreenShot> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScreenShotCopyWith<$Res> {
  factory $ScreenShotCopyWith(
          ScreenShot value, $Res Function(ScreenShot) then) =
      _$ScreenShotCopyWithImpl<$Res, ScreenShot>;
  @useResult
  $Res call({String id, String image});
}

/// @nodoc
class _$ScreenShotCopyWithImpl<$Res, $Val extends ScreenShot>
    implements $ScreenShotCopyWith<$Res> {
  _$ScreenShotCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScreenShot
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ScreenShotImplCopyWith<$Res>
    implements $ScreenShotCopyWith<$Res> {
  factory _$$ScreenShotImplCopyWith(
          _$ScreenShotImpl value, $Res Function(_$ScreenShotImpl) then) =
      __$$ScreenShotImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String image});
}

/// @nodoc
class __$$ScreenShotImplCopyWithImpl<$Res>
    extends _$ScreenShotCopyWithImpl<$Res, _$ScreenShotImpl>
    implements _$$ScreenShotImplCopyWith<$Res> {
  __$$ScreenShotImplCopyWithImpl(
      _$ScreenShotImpl _value, $Res Function(_$ScreenShotImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScreenShot
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? image = null,
  }) {
    return _then(_$ScreenShotImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ScreenShotImpl with DiagnosticableTreeMixin implements _ScreenShot {
  const _$ScreenShotImpl({required this.id, required this.image});

  factory _$ScreenShotImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScreenShotImplFromJson(json);

  @override
  final String id;
  @override
  final String image;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ScreenShot(id: $id, image: $image)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ScreenShot'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('image', image));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScreenShotImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, image);

  /// Create a copy of ScreenShot
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScreenShotImplCopyWith<_$ScreenShotImpl> get copyWith =>
      __$$ScreenShotImplCopyWithImpl<_$ScreenShotImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScreenShotImplToJson(
      this,
    );
  }
}

abstract class _ScreenShot implements ScreenShot {
  const factory _ScreenShot(
      {required final String id,
      required final String image}) = _$ScreenShotImpl;

  factory _ScreenShot.fromJson(Map<String, dynamic> json) =
      _$ScreenShotImpl.fromJson;

  @override
  String get id;
  @override
  String get image;

  /// Create a copy of ScreenShot
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScreenShotImplCopyWith<_$ScreenShotImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
