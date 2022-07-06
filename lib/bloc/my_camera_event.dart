part of 'my_camera_bloc.dart';

@freezed
class MyCameraEvent with _$MyCameraEvent {

  const factory MyCameraEvent.cameraStarted() = _CameraStarted;
  
  const factory MyCameraEvent.startImageStream(
    CameraImage? image,
    CameraDescription description
  ) = _StartImageStream;
  const factory MyCameraEvent.stopImageStream() = _StopImageStream;
}