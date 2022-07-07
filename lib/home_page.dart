

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multithread_camera/bloc/my_camera_bloc.dart';

class HomePage extends StatefulWidget {

  final List<CameraDescription> cameras;
  const HomePage({Key? key, required this.cameras}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  late final CameraController _controller;
  Future<void>? _initializeControllerFuture;


  @override
  void initState() {
    super.initState();
    _controller = CameraController(
        widget.cameras.first,
        ResolutionPreset.high,
        imageFormatGroup: ImageFormatGroup.jpeg
    );
    _controller.initialize().then((_) {
      if (!mounted) {
      return;
    }
    BlocProvider.of<MyCameraBloc>(context).add(const MyCameraEvent.cameraStarted());
    setState(() {});
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.camera),
        onPressed: () {
          if (_controller.value.isStreamingImages) {
            _controller.stopImageStream();
            BlocProvider.of<MyCameraBloc>(context).add(const MyCameraEvent.stopImageStream());
          } else {
            _controller.startImageStream((image) {
            BlocProvider.of<MyCameraBloc>(context).add(MyCameraEvent.startImageStream(
                image,
                _controller.description
            ));
          });
          }
          
        },
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return StreamBuilder(
            stream: BlocProvider.of<MyCameraBloc>(context).channelStream,
            builder: (context, snapshot) {
              print(snapshot.data);
              return SizedBox(
                width: constraints.maxWidth,
                height: constraints.maxHeight,
                child: _controller.value.isInitialized
                  ? AspectRatio(
                    aspectRatio: _controller.value.aspectRatio,
                    child: CameraPreview(_controller)
                    )
                  : const Center(child: CircularProgressIndicator()),
              );
            }
          );
        }
      ),
    );
  }
}