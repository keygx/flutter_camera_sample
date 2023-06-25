import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_camera_sample/image_viewer.dart';
import 'package:flutter_camera_sample/loading_hud.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:screenshot/screenshot.dart';

class CameraPreviewPage extends HookConsumerWidget {
  const CameraPreviewPage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cameraController = ref.watch(cameraControllerProvider);
    final screenshotController = ScreenshotController();

    return LoadingHUD(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Silent Shot'),
        ),
        body: Container(
          color: Colors.black,
          child: cameraController.when(
            data: (data) => Center(
              child: Screenshot(
                controller: screenshotController,
                child: CameraPreview(data),
              ),
            ),
            error: (err, stack) => Text('Error: $err'),
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
          ),
        ),
        floatingActionButton: cameraController.when(
          data: (controller) => FloatingActionButton(
            onPressed: () {
              ref.watch(loadingHUDStateProvider.notifier).state = true;
              onPressSilentShotButton(context, ref, screenshotController);
            },
            child: const Icon(Icons.camera_alt_rounded),
          ),
          error: (err, stack) => Text('Error: $err'),
          loading: () => Container(),
        ),
      ),
    );
  }

  Future<void> onPressSilentShotButton(
    BuildContext context,
    WidgetRef ref,
    ScreenshotController controller,
  ) async {
    controller
        .capture(
            pixelRatio: MediaQuery.of(context).devicePixelRatio,
            delay: Duration.zero)
        .then((bytes) async {
      if (bytes == null) {
        return;
      }
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => ImageViewer(
            bytes: bytes,
          ),
        ),
      );
      ref.watch(loadingHUDStateProvider.notifier).state = false;
    }).catchError((onError) {
      print(onError);
    });
  }
}

final cameraControllerProvider =
    FutureProvider.autoDispose<CameraController>((ref) async {
  final cameras = await availableCameras();
  final cameraController = CameraController(
    cameras.first,
    ResolutionPreset.max,
    enableAudio: false,
    imageFormatGroup: ImageFormatGroup.bgra8888,
  );

  ref.onDispose(() {
    cameraController.dispose();
  });

  await cameraController.initialize();
  return cameraController;
});
