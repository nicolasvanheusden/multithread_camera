// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'my_camera_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MyCameraEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cameraStarted,
    required TResult Function(CameraImage? image, CameraDescription description)
        startImageStream,
    required TResult Function() stopImageStream,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? cameraStarted,
    TResult Function(CameraImage? image, CameraDescription description)?
        startImageStream,
    TResult Function()? stopImageStream,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cameraStarted,
    TResult Function(CameraImage? image, CameraDescription description)?
        startImageStream,
    TResult Function()? stopImageStream,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CameraStarted value) cameraStarted,
    required TResult Function(_StartImageStream value) startImageStream,
    required TResult Function(_StopImageStream value) stopImageStream,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CameraStarted value)? cameraStarted,
    TResult Function(_StartImageStream value)? startImageStream,
    TResult Function(_StopImageStream value)? stopImageStream,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CameraStarted value)? cameraStarted,
    TResult Function(_StartImageStream value)? startImageStream,
    TResult Function(_StopImageStream value)? stopImageStream,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyCameraEventCopyWith<$Res> {
  factory $MyCameraEventCopyWith(
          MyCameraEvent value, $Res Function(MyCameraEvent) then) =
      _$MyCameraEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$MyCameraEventCopyWithImpl<$Res>
    implements $MyCameraEventCopyWith<$Res> {
  _$MyCameraEventCopyWithImpl(this._value, this._then);

  final MyCameraEvent _value;
  // ignore: unused_field
  final $Res Function(MyCameraEvent) _then;
}

/// @nodoc
abstract class _$$_CameraStartedCopyWith<$Res> {
  factory _$$_CameraStartedCopyWith(
          _$_CameraStarted value, $Res Function(_$_CameraStarted) then) =
      __$$_CameraStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CameraStartedCopyWithImpl<$Res>
    extends _$MyCameraEventCopyWithImpl<$Res>
    implements _$$_CameraStartedCopyWith<$Res> {
  __$$_CameraStartedCopyWithImpl(
      _$_CameraStarted _value, $Res Function(_$_CameraStarted) _then)
      : super(_value, (v) => _then(v as _$_CameraStarted));

  @override
  _$_CameraStarted get _value => super._value as _$_CameraStarted;
}

/// @nodoc

class _$_CameraStarted implements _CameraStarted {
  const _$_CameraStarted();

  @override
  String toString() {
    return 'MyCameraEvent.cameraStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CameraStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cameraStarted,
    required TResult Function(CameraImage? image, CameraDescription description)
        startImageStream,
    required TResult Function() stopImageStream,
  }) {
    return cameraStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? cameraStarted,
    TResult Function(CameraImage? image, CameraDescription description)?
        startImageStream,
    TResult Function()? stopImageStream,
  }) {
    return cameraStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cameraStarted,
    TResult Function(CameraImage? image, CameraDescription description)?
        startImageStream,
    TResult Function()? stopImageStream,
    required TResult orElse(),
  }) {
    if (cameraStarted != null) {
      return cameraStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CameraStarted value) cameraStarted,
    required TResult Function(_StartImageStream value) startImageStream,
    required TResult Function(_StopImageStream value) stopImageStream,
  }) {
    return cameraStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CameraStarted value)? cameraStarted,
    TResult Function(_StartImageStream value)? startImageStream,
    TResult Function(_StopImageStream value)? stopImageStream,
  }) {
    return cameraStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CameraStarted value)? cameraStarted,
    TResult Function(_StartImageStream value)? startImageStream,
    TResult Function(_StopImageStream value)? stopImageStream,
    required TResult orElse(),
  }) {
    if (cameraStarted != null) {
      return cameraStarted(this);
    }
    return orElse();
  }
}

abstract class _CameraStarted implements MyCameraEvent {
  const factory _CameraStarted() = _$_CameraStarted;
}

/// @nodoc
abstract class _$$_StartImageStreamCopyWith<$Res> {
  factory _$$_StartImageStreamCopyWith(
          _$_StartImageStream value, $Res Function(_$_StartImageStream) then) =
      __$$_StartImageStreamCopyWithImpl<$Res>;
  $Res call({CameraImage? image, CameraDescription description});
}

/// @nodoc
class __$$_StartImageStreamCopyWithImpl<$Res>
    extends _$MyCameraEventCopyWithImpl<$Res>
    implements _$$_StartImageStreamCopyWith<$Res> {
  __$$_StartImageStreamCopyWithImpl(
      _$_StartImageStream _value, $Res Function(_$_StartImageStream) _then)
      : super(_value, (v) => _then(v as _$_StartImageStream));

  @override
  _$_StartImageStream get _value => super._value as _$_StartImageStream;

  @override
  $Res call({
    Object? image = freezed,
    Object? description = freezed,
  }) {
    return _then(_$_StartImageStream(
      image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as CameraImage?,
      description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as CameraDescription,
    ));
  }
}

/// @nodoc

class _$_StartImageStream implements _StartImageStream {
  const _$_StartImageStream(this.image, this.description);

  @override
  final CameraImage? image;
  @override
  final CameraDescription description;

  @override
  String toString() {
    return 'MyCameraEvent.startImageStream(image: $image, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StartImageStream &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  _$$_StartImageStreamCopyWith<_$_StartImageStream> get copyWith =>
      __$$_StartImageStreamCopyWithImpl<_$_StartImageStream>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cameraStarted,
    required TResult Function(CameraImage? image, CameraDescription description)
        startImageStream,
    required TResult Function() stopImageStream,
  }) {
    return startImageStream(image, description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? cameraStarted,
    TResult Function(CameraImage? image, CameraDescription description)?
        startImageStream,
    TResult Function()? stopImageStream,
  }) {
    return startImageStream?.call(image, description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cameraStarted,
    TResult Function(CameraImage? image, CameraDescription description)?
        startImageStream,
    TResult Function()? stopImageStream,
    required TResult orElse(),
  }) {
    if (startImageStream != null) {
      return startImageStream(image, description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CameraStarted value) cameraStarted,
    required TResult Function(_StartImageStream value) startImageStream,
    required TResult Function(_StopImageStream value) stopImageStream,
  }) {
    return startImageStream(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CameraStarted value)? cameraStarted,
    TResult Function(_StartImageStream value)? startImageStream,
    TResult Function(_StopImageStream value)? stopImageStream,
  }) {
    return startImageStream?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CameraStarted value)? cameraStarted,
    TResult Function(_StartImageStream value)? startImageStream,
    TResult Function(_StopImageStream value)? stopImageStream,
    required TResult orElse(),
  }) {
    if (startImageStream != null) {
      return startImageStream(this);
    }
    return orElse();
  }
}

abstract class _StartImageStream implements MyCameraEvent {
  const factory _StartImageStream(
          final CameraImage? image, final CameraDescription description) =
      _$_StartImageStream;

  CameraImage? get image => throw _privateConstructorUsedError;
  CameraDescription get description => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_StartImageStreamCopyWith<_$_StartImageStream> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_StopImageStreamCopyWith<$Res> {
  factory _$$_StopImageStreamCopyWith(
          _$_StopImageStream value, $Res Function(_$_StopImageStream) then) =
      __$$_StopImageStreamCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StopImageStreamCopyWithImpl<$Res>
    extends _$MyCameraEventCopyWithImpl<$Res>
    implements _$$_StopImageStreamCopyWith<$Res> {
  __$$_StopImageStreamCopyWithImpl(
      _$_StopImageStream _value, $Res Function(_$_StopImageStream) _then)
      : super(_value, (v) => _then(v as _$_StopImageStream));

  @override
  _$_StopImageStream get _value => super._value as _$_StopImageStream;
}

/// @nodoc

class _$_StopImageStream implements _StopImageStream {
  const _$_StopImageStream();

  @override
  String toString() {
    return 'MyCameraEvent.stopImageStream()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_StopImageStream);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cameraStarted,
    required TResult Function(CameraImage? image, CameraDescription description)
        startImageStream,
    required TResult Function() stopImageStream,
  }) {
    return stopImageStream();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? cameraStarted,
    TResult Function(CameraImage? image, CameraDescription description)?
        startImageStream,
    TResult Function()? stopImageStream,
  }) {
    return stopImageStream?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cameraStarted,
    TResult Function(CameraImage? image, CameraDescription description)?
        startImageStream,
    TResult Function()? stopImageStream,
    required TResult orElse(),
  }) {
    if (stopImageStream != null) {
      return stopImageStream();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CameraStarted value) cameraStarted,
    required TResult Function(_StartImageStream value) startImageStream,
    required TResult Function(_StopImageStream value) stopImageStream,
  }) {
    return stopImageStream(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CameraStarted value)? cameraStarted,
    TResult Function(_StartImageStream value)? startImageStream,
    TResult Function(_StopImageStream value)? stopImageStream,
  }) {
    return stopImageStream?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CameraStarted value)? cameraStarted,
    TResult Function(_StartImageStream value)? startImageStream,
    TResult Function(_StopImageStream value)? stopImageStream,
    required TResult orElse(),
  }) {
    if (stopImageStream != null) {
      return stopImageStream(this);
    }
    return orElse();
  }
}

abstract class _StopImageStream implements MyCameraEvent {
  const factory _StopImageStream() = _$_StopImageStream;
}

/// @nodoc
mixin _$MyCameraState {
  bool get isRecording => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MyCameraStateCopyWith<MyCameraState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyCameraStateCopyWith<$Res> {
  factory $MyCameraStateCopyWith(
          MyCameraState value, $Res Function(MyCameraState) then) =
      _$MyCameraStateCopyWithImpl<$Res>;
  $Res call({bool isRecording});
}

/// @nodoc
class _$MyCameraStateCopyWithImpl<$Res>
    implements $MyCameraStateCopyWith<$Res> {
  _$MyCameraStateCopyWithImpl(this._value, this._then);

  final MyCameraState _value;
  // ignore: unused_field
  final $Res Function(MyCameraState) _then;

  @override
  $Res call({
    Object? isRecording = freezed,
  }) {
    return _then(_value.copyWith(
      isRecording: isRecording == freezed
          ? _value.isRecording
          : isRecording // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_MyCameraStateCopyWith<$Res>
    implements $MyCameraStateCopyWith<$Res> {
  factory _$$_MyCameraStateCopyWith(
          _$_MyCameraState value, $Res Function(_$_MyCameraState) then) =
      __$$_MyCameraStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isRecording});
}

/// @nodoc
class __$$_MyCameraStateCopyWithImpl<$Res>
    extends _$MyCameraStateCopyWithImpl<$Res>
    implements _$$_MyCameraStateCopyWith<$Res> {
  __$$_MyCameraStateCopyWithImpl(
      _$_MyCameraState _value, $Res Function(_$_MyCameraState) _then)
      : super(_value, (v) => _then(v as _$_MyCameraState));

  @override
  _$_MyCameraState get _value => super._value as _$_MyCameraState;

  @override
  $Res call({
    Object? isRecording = freezed,
  }) {
    return _then(_$_MyCameraState(
      isRecording: isRecording == freezed
          ? _value.isRecording
          : isRecording // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_MyCameraState implements _MyCameraState {
  const _$_MyCameraState({required this.isRecording});

  @override
  final bool isRecording;

  @override
  String toString() {
    return 'MyCameraState(isRecording: $isRecording)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MyCameraState &&
            const DeepCollectionEquality()
                .equals(other.isRecording, isRecording));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(isRecording));

  @JsonKey(ignore: true)
  @override
  _$$_MyCameraStateCopyWith<_$_MyCameraState> get copyWith =>
      __$$_MyCameraStateCopyWithImpl<_$_MyCameraState>(this, _$identity);
}

abstract class _MyCameraState implements MyCameraState {
  const factory _MyCameraState({required final bool isRecording}) =
      _$_MyCameraState;

  @override
  bool get isRecording => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_MyCameraStateCopyWith<_$_MyCameraState> get copyWith =>
      throw _privateConstructorUsedError;
}
