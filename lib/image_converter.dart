// import 'dart:async';
// import 'dart:isolate';
// import 'dart:typed_data';
// import 'package:camera/camera.dart';
// import 'package:web_socket_channel/web_socket_channel.dart';
// import 'package:async/async.dart';

// class ImageConverter {

//   Isolate? _isolate;
//   SendPort? _sendPort;

//   final ReceivePort _receivePort = ReceivePort();
//   late final _receiveQueue = StreamQueue(_receivePort);
//   static 

//   Future<void> start() async {
    
//     _isolate = await Isolate.spawn(_isolateEntryPoint, _receivePort.sendPort);
//     _sendPort = await _receiveQueue.next;
    
//   }

//   Iterable<Uint8List> getBytes(Uint8List list) sync* {
//     yield list;
//   }

//   Future<void> sendImage(CameraImage image) async {
//    // Uint8List? bytes = image.planes.map((element) => element.bytes).expand(getBytes).toList().first;
//     _sendPort!.send(image.planes.first.bytes);
//     //bytes = null;
//     //await compute<List<int>, void>(_convertBytesToImage, image.planes.expand((element) => element.bytes).toList());
//     //scheduleMicrotask(() => _convertBytesToImage(image.planes.expand((element) => element.bytes).toList()));
//   }
  


//   void dispose() {
//     _receiveQueue.cancel();
//     _receivePort.close();
//     _isolate?.kill();
//     _isolate = null;
//   }
// }

// FutureOr<void> _convertBytesToImage(List<int> bytes) {
//   // imglib.Image? image = imglib.Image.fromBytes(
//   //   720,
//   //   1080,
//   //   bytes
//   // );
//   // List<int>? jpg = imglib.JpegEncoder().encodeImage(image);
//   ImageConverter.
//   // jpg = null;
//   // image = null;

// }
  



// Future<void> _isolateEntryPoint(SendPort sendPort) async {
//   final receivePort = ReceivePort();
//   sendPort.send(receivePort.sendPort);
//   receivePort.listen((Object? message) async {
//     if (message is Uint8List) {
//       _convertBytesToImage(message);
//     }
//   });
// }

  


  