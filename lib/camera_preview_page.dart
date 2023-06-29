import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_camera_sample/camera/camera_config.dart';
import 'package:flutter_camera_sample/camera/zoom/camera_zoom_state.dart';
import 'package:flutter_camera_sample/image_viewer.dart';
import 'package:flutter_camera_sample/loading_hud.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:screenshot/screenshot.dart';

class CameraPreviewPage extends StatefulHookConsumerWidget {
  const CameraPreviewPage({super.key});

  @override
  ConsumerState<CameraPreviewPage> createState() => _CameraPreviewPageState();
}

class _CameraPreviewPageState extends ConsumerState<CameraPreviewPage> {
  final screenshotController = ScreenshotController();

  @override
  Widget build(BuildContext context) {
    final cameraController = ref.watch(cameraControllerProvider);
    final cameraZoomState = ref.watch(cameraZoomStateProvider.notifier);

    return LoadingHUD(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Silent Shot'),
        ),
        body: Container(
          color: Colors.black,
          child: Center(
            child: Screenshot(
              controller: screenshotController,
              child: CameraPreview(
                cameraController,
                child: GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onScaleStart: (_) {
                    cameraZoomState.updateScale();
                  },
                  onScaleUpdate: (ScaleUpdateDetails details) {
                    cameraZoomState.updateZoomLevel(
                      cameraController,
                      details.scale,
                    );
                  },
                ),
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            ref.watch(loadingHUDStateProvider.notifier).state = true;
            onPressSilentShotButton(context, ref, screenshotController);
          },
          child: const Icon(Icons.camera_alt_rounded),
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
