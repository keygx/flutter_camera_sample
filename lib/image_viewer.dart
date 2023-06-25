import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image/image.dart' as imagelib;
import 'package:photo_view/photo_view.dart';

class ImageViewer extends StatelessWidget {
  const ImageViewer({
    super.key,
    required this.bytes,
  });

  final Uint8List bytes;

  @override
  Widget build(BuildContext context) {
    final image = imagelib.decodeImage(bytes.buffer.asUint8List());

    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Viewer'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Stack(
        children: [
          PhotoView(
            imageProvider: MemoryImage(bytes),
            backgroundDecoration: const BoxDecoration(
              color: Color(0xFFD4D4D4),
            ),
          ),
          Positioned(
            left: 5,
            bottom: 5,
            child: Text(
              'W:${image?.width} x H:${image?.height} numChannels:${image?.numChannels}',
              style: const TextStyle(color: Colors.deepOrange),
            ),
          ),
        ],
      ),
    );
  }
}
