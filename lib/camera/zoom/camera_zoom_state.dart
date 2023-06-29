import 'package:camera/camera.dart';
import 'package:flutter_camera_sample/camera/zoom/camera_zoom.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'camera_zoom_state.g.dart';

@Riverpod()
class CameraZoomState extends _$CameraZoomState {
  @override
  CameraZoom build() {
    return const CameraZoom();
  }

  void updateScale() {
    state = state.copyWith(baseScale: state.currentScale);
  }

  void updateZoomLevel(CameraController controller, double updatedScale) {
    final currentScale = (state.baseScale * updatedScale)
        .clamp(state.minZoomValue, state.maxZoomValue);
    state = state.copyWith(currentScale: currentScale);

    controller.setZoomLevel(state.currentScale);
  }

  void reset() {
    state = const CameraZoom();
  }
}
