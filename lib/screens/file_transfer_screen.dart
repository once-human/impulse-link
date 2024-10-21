import 'package:flutter/material.dart';

class FileTransferScreen extends StatelessWidget {
  const FileTransferScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('File Transfer'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                // Implement file selection and transfer logic
              },
              child: const Text('Send File'),
            ),
            ElevatedButton(
              onPressed: () {
                // Implement file reception logic
              },
              child: const Text('Receive File'),
            ),
          ],
        ),
      ),
    );
  }
}
