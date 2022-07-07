import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multithread_camera/bloc/my_camera_bloc.dart';
import 'package:multithread_camera/home_page.dart';

Future<List<CameraDescription>> getCameras() async {
  final cameras = await availableCameras();
  return cameras;
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final cameras = await getCameras();
  runApp(MyApp(cameras: cameras,));
}

class MyApp extends StatelessWidget {
  final List<CameraDescription> cameras;
  const MyApp({Key? key, required this.cameras}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MyCameraBloc(
      ),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomePage(
          cameras: cameras
        )
      ),
    );
  }

  
}
