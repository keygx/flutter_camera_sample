import 'package:flutter/material.dart';
import 'package:flutter_camera_sample/camera_preview_page.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class App extends HookConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: 'Flutter Camera Sample',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        navigationBarTheme: const NavigationBarThemeData(
          backgroundColor: Colors.blue,
        ),
      ),
      home: const CameraPreviewPage(),
    );
  }
}
