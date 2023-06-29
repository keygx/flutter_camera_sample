import 'package:flutter/material.dart';
import 'package:flutter_camera_sample/app.dart';
import 'package:flutter_camera_sample/camera/camera_config.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // override用
  final cameraController = await CameraConfig.getCameraController();

  runApp(
    ProviderScope(
      overrides: [
        cameraControllerProvider.overrideWith(
          (_) => cameraController,
        ),
      ],
      child: const App(),
    ),
  );
}
