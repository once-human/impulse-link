import 'package:flutter/material.dart';
import 'file_transfer_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ImpulseLink Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FileTransferScreen()),
                );
              },
              child: const Text('Go to File Transfer'),
            ),
            // Add more buttons for different features
          ],
        ),
      ),
    );
  }
}
