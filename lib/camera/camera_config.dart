import 'package:camera/camera.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CameraConfig {
  static Future<CameraController> getCameraController() async {
    final cameras = await availableCameras();
    final cameraController = CameraController(
      cameras.first,
      ResolutionPreset.max,
      enableAudio: false,
      imageFormatGroup: ImageFormatGroup.bgra8888,
    );

    await cameraController.initialize();
    return cameraController;
  }
}

final cameraControllerProvider = Provider.autoDispose<CameraController>(
  (ref) => throw UnimplementedError(),
);
