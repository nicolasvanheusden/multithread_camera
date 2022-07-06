part of 'my_camera_bloc.dart';

@freezed
class MyCameraState with _$MyCameraState {

  const factory MyCameraState({
    required final bool isRecording
  }) = _MyCameraState;
  

  factory MyCameraState.initial() => const _MyCameraState(
    isRecording: false
  );
}
