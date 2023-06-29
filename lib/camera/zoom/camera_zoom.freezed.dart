// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'camera_zoom.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CameraZoom {
  double get minZoomValue => throw _privateConstructorUsedError;
  double get maxZoomValue => throw _privateConstructorUsedError;
  double get currentScale => throw _privateConstructorUsedError;
  double get baseScale => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CameraZoomCopyWith<CameraZoom> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CameraZoomCopyWith<$Res> {
  factory $CameraZoomCopyWith(
          CameraZoom value, $Res Function(CameraZoom) then) =
      _$CameraZoomCopyWithImpl<$Res, CameraZoom>;
  @useResult
  $Res call(
      {double minZoomValue,
      double maxZoomValue,
      double currentScale,
      double baseScale});
}

/// @nodoc
class _$CameraZoomCopyWithImpl<$Res, $Val extends CameraZoom>
    implements $CameraZoomCopyWith<$Res> {
  _$CameraZoomCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minZoomValue = null,
    Object? maxZoomValue = null,
    Object? currentScale = null,
    Object? baseScale = null,
  }) {
    return _then(_value.copyWith(
      minZoomValue: null == minZoomValue
          ? _value.minZoomValue
          : minZoomValue // ignore: cast_nullable_to_non_nullable
              as double,
      maxZoomValue: null == maxZoomValue
          ? _value.maxZoomValue
          : maxZoomValue // ignore: cast_nullable_to_non_nullable
              as double,
      currentScale: null == currentScale
          ? _value.currentScale
          : currentScale // ignore: cast_nullable_to_non_nullable
              as double,
      baseScale: null == baseScale
          ? _value.baseScale
          : baseScale // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CameraZoomCopyWith<$Res>
    implements $CameraZoomCopyWith<$Res> {
  factory _$$_CameraZoomCopyWith(
          _$_CameraZoom value, $Res Function(_$_CameraZoom) then) =
      __$$_CameraZoomCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double minZoomValue,
      double maxZoomValue,
      double currentScale,
      double baseScale});
}

/// @nodoc
class __$$_CameraZoomCopyWithImpl<$Res>
    extends _$CameraZoomCopyWithImpl<$Res, _$_CameraZoom>
    implements _$$_CameraZoomCopyWith<$Res> {
  __$$_CameraZoomCopyWithImpl(
      _$_CameraZoom _value, $Res Function(_$_CameraZoom) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minZoomValue = null,
    Object? maxZoomValue = null,
    Object? currentScale = null,
    Object? baseScale = null,
  }) {
    return _then(_$_CameraZoom(
      minZoomValue: null == minZoomValue
          ? _value.minZoomValue
          : minZoomValue // ignore: cast_nullable_to_non_nullable
              as double,
      maxZoomValue: null == maxZoomValue
          ? _value.maxZoomValue
          : maxZoomValue // ignore: cast_nullable_to_non_nullable
              as double,
      currentScale: null == currentScale
          ? _value.currentScale
          : currentScale // ignore: cast_nullable_to_non_nullable
              as double,
      baseScale: null == baseScale
          ? _value.baseScale
          : baseScale // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_CameraZoom implements _CameraZoom {
  const _$_CameraZoom(
      {this.minZoomValue = 1.0,
      this.maxZoomValue = 3.0,
      this.currentScale = 1.0,
      this.baseScale = 1.0});

  @override
  @JsonKey()
  final double minZoomValue;
  @override
  @JsonKey()
  final double maxZoomValue;
  @override
  @JsonKey()
  final double currentScale;
  @override
  @JsonKey()
  final double baseScale;

  @override
  String toString() {
    return 'CameraZoom(minZoomValue: $minZoomValue, maxZoomValue: $maxZoomValue, currentScale: $currentScale, baseScale: $baseScale)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CameraZoom &&
            (identical(other.minZoomValue, minZoomValue) ||
                other.minZoomValue == minZoomValue) &&
            (identical(other.maxZoomValue, maxZoomValue) ||
                other.maxZoomValue == maxZoomValue) &&
            (identical(other.currentScale, currentScale) ||
                other.currentScale == currentScale) &&
            (identical(other.baseScale, baseScale) ||
                other.baseScale == baseScale));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, minZoomValue, maxZoomValue, currentScale, baseScale);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CameraZoomCopyWith<_$_CameraZoom> get copyWith =>
      __$$_CameraZoomCopyWithImpl<_$_CameraZoom>(this, _$identity);
}

abstract class _CameraZoom implements CameraZoom {
  const factory _CameraZoom(
      {final double minZoomValue,
      final double maxZoomValue,
      final double currentScale,
      final double baseScale}) = _$_CameraZoom;

  @override
  double get minZoomValue;
  @override
  double get maxZoomValue;
  @override
  double get currentScale;
  @override
  double get baseScale;
  @override
  @JsonKey(ignore: true)
  _$$_CameraZoomCopyWith<_$_CameraZoom> get copyWith =>
      throw _privateConstructorUsedError;
}
