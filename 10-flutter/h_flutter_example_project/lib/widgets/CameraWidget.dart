import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class CameraWidget extends StatefulWidget {
  String? imagePath;
  Function? setMethod;

  CameraWidget({required this.imagePath, required this.setMethod});

  @override
  _CameraWidgetState createState() => _CameraWidgetState();
}

class _CameraWidgetState extends State<CameraWidget> {
  late CameraController _controller;
  Future<void>? _initializeControllerFuture;

  _CameraWidgetState();

  @override
  void initState() {
    super.initState();
    _initializeCamera();
  }

  Future<void> _initializeCamera() async {
    final cameras = await availableCameras();
    _controller = CameraController(cameras[0], ResolutionPreset.high);
    _initializeControllerFuture = _controller.initialize();
    setState(() {

    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: 500,
          child: FutureBuilder<void>(
            future: _initializeControllerFuture,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              } else if (snapshot.connectionState == ConnectionState.done) {
                if (widget.imagePath != null) {
                  return Image.file(File(widget.imagePath!), fit: BoxFit.cover);
                }
                return CameraPreview(_controller);
              } else {
                return const Center(child: Text('카메라 초기화 실패'));
              }
            },
          ),
        ),
        widget.imagePath == null ?
        FloatingActionButton(
          onPressed: () async {
            try {
              await _initializeControllerFuture;
              final image = await _controller.takePicture();
              widget.setMethod!(image.path);
            } catch (e) {
              print(e);
            }
          },
          child: const Icon(Icons.camera),
        ) : IconButton(icon: const Icon(Icons.cancel_presentation) , onPressed: (){
          widget.setMethod!();
        })
      ],
    );
  }
}