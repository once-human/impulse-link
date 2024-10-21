import 'package:flutter/services.dart';

class ConnectionManager {
  static const platform = MethodChannel('impulselink/connection');

  Future<void> initiateConnection() async {
    try {
      final result = await platform.invokeMethod('initiateConnection');
      print('Connection initiated: $result');
    } on PlatformException catch (e) {
      print('Failed to initiate connection: ${e.message}');
    }
  }

  Future<void> sendFile(String filePath) async {
    try {
      final result = await platform.invokeMethod('sendFile', {'filePath': filePath});
      print('File sent: $result');
    } on PlatformException catch (e) {
      print('Failed to send file: ${e.message}');
    }
  }

  Future<void> receiveFile() async {
    try {
      final result = await platform.invokeMethod('receiveFile');
      print('File received: $result');
    } on PlatformException catch (e) {
      print('Failed to receive file: ${e.message}');
    }
  }
}
