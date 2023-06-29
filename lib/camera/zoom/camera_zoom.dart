import 'package:freezed_annotation/freezed_annotation.dart';

part 'camera_zoom.freezed.dart';

@freezed
class CameraZoom with _$CameraZoom {
  const factory CameraZoom({
    @Default(1.0) double minZoomValue,
    @Default(3.0) double maxZoomValue,
    @Default(1.0) double currentScale,
    @Default(1.0) double baseScale,
  }) = _CameraZoom;
}
