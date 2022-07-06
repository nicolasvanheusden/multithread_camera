import 'package:camera/camera.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:multithread_camera/face_repository.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

part 'my_camera_event.dart';
part 'my_camera_state.dart';
part 'my_camera_bloc.freezed.dart';

class MyCameraBloc extends Bloc<MyCameraEvent, MyCameraState> {

  final FaceRepository _faceRepository;
  final _channel = WebSocketChannel.connect(Uri.parse('wss://echo.websocket.events'));

  MyCameraBloc(this._faceRepository) : super(MyCameraState.initial()) {
    on<_CameraStarted>((event, emit) async {
    });
    on<_StartImageStream>((event, emit) {
      print("analyze image streaming");
      emit(state.copyWith(isRecording: true));
      final inputImage = _faceRepository.getInputImage(event.image, event.description);
      _channel.sink.add(inputImage.bytes);
      final face =_faceRepository.getFace(inputImage);
    });
    on<_StopImageStream>((event, emit) {
      print("stop streaming");
      emit(state.copyWith(isRecording: false));
    });
  }

  Stream get channelStream => _channel.stream;

  @override
  Future<void> close() {
    _channel.sink.close();
    return super.close();
  }

}
