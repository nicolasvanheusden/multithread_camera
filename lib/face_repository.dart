


// import 'package:camera/camera.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/rendering.dart';
// import 'package:google_mlkit_face_detection/google_mlkit_face_detection.dart';

// class FaceRepository {


//   late final FaceDetectorOptions _options;
//   late final FaceDetector _detector;
  
//   FaceRepository() {
//     _options = FaceDetectorOptions(
//       enableContours: true,      
//     );
//     _detector = FaceDetector(options: _options);
//   }


//   InputImage getInputImage(CameraImage image, CameraDescription description) {
//     final WriteBuffer allBytes = WriteBuffer();
//     for (final Plane plane in image.planes) {
//       allBytes.putUint8List(plane.bytes);
//     }
//     final bytes = allBytes.done().buffer.asUint8List();

//     final Size imageSize = Size(image.width.toDouble(), image.height.toDouble());

//     final InputImageRotation imageRotation =
//         InputImageRotationValue.fromRawValue(description.sensorOrientation) 
//           ?? InputImageRotation.rotation0deg;

//     final InputImageFormat inputImageFormat =
//         InputImageFormatValue.fromRawValue(image.format.raw) ?? InputImageFormat.nv21;

//     final planeData = image.planes.map(
//       (Plane plane) {
//         return InputImagePlaneMetadata(
//           bytesPerRow: plane.bytesPerRow,
//           height: plane.height,
//           width: plane.width,
//         );
//       },
//     ).toList();

//     final inputImageData = InputImageData(
//       size: imageSize,
//       imageRotation: imageRotation,
//       inputImageFormat: inputImageFormat,
//       planeData: planeData,
//     );
    
//     return InputImage.fromBytes(bytes: bytes, inputImageData: inputImageData);
//   }

//   Future<Face?> getFace(InputImage image) async {
//     final faces = await _detector.processImage(image);
//     return faces.isEmpty ? null : faces.first;
//   }
// }