



import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:multithread_camera/face_repository.dart';


part 'my_camera_event.dart';
part 'my_camera_state.dart';
part 'my_camera_bloc.freezed.dart';

class MyCameraBloc extends Bloc<MyCameraEvent, MyCameraState> {

  final FaceRepository _faceRepository;

  // ws://docker24463-dev-video-catching-service.rag-cloud.hosteur.com:8000/test/ws
  // wss://echo.websocket.events
  final addr = InternetAddress('185.245.94.127', type: InternetAddressType.IPv4);
  

  int counter = 0;
  Stopwatch stopwatch = Stopwatch()..start();

  MyCameraBloc(this._faceRepository) : super(MyCameraState.initial()) {
    on<_CameraStarted>((event, emit) async {
    });
    // ignore: void_checks
    on<_StartImageStream>((event, emit) async {
      print("analyze image streaming");
      emit(state.copyWith(isRecording: true));
      final inputImage = _faceRepository.getInputImage(event.image!, event.description);
      // for (var i = 0; i < inputImage.bytes!.length; i+= inputImage.bytes!.length ~/ 50) {
      //   _channel.sink.add(Uint8List.fromList(inputImage.bytes!.getRange(i, i + inputImage.bytes!.length ~/ 50).toList()));
      // }
      
      try {     
        
        await RawDatagramSocket.bind(InternetAddress.anyIPv4, 0).then((udpSocket) {

          int dataSend = 0;
          
          while (dataSend < inputImage.bytes!.lengthInBytes) {
              dataSend += udpSocket.send(
              inputImage.bytes!,
              // utf8.encode('toto'),
              addr,
              9000
            );
          }

          print('Image envoyé avec $dataSend bytes.');
        });
        // var request = http.MultipartRequest('POST', url);
        // request.files.add(http.MultipartFile.fromBytes(
        //   'file',
          
        // ));
        // final response = await request.send();
        

        // if (response.statusCode == 200) {
        //   print(await response.stream.bytesToString());
        // }
        // else {
        //   print(response.reasonPhrase);
        //   print(stopwatch.elapsed);
        // }
        
      } on SocketException catch (_) {
        print(_);
        return;
      } on HttpException catch (error) {
        print(error);
        return;
      }

      
      counter++;
      //_channel.sink.add(inputImage.bytes);
      
      //_channel.sink.add(inputImage.inputImageData!.inputImageFormat.name);
      //final buffer = WriteBuffer();
      //for (int i = 0; i < 200; i++) {
        //buffer.putUint8List(Uint8List.fromList([0,1,1,0,1,0,1,0]));
        //_channel.sink.add('$i');
      //}
      
      // final face =_faceRepository.getFace(inputImage);
    });
    on<_StopImageStream>((event, emit) {
      print("stop streaming");
      emit(state.copyWith(isRecording: false));
    });
  }

  //Stream get channelStream => _channel.stream;

  @override
  Future<void> close() {
    //_channel.sink.close();
    return super.close();
  }

}
