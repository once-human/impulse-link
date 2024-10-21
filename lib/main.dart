import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PulseLink',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String? filePath;

  // Function to select a file
  Future<void> selectFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null) {
      setState(() {
        filePath = result.files.single.path;
      });
    } else {
      // User canceled the picker
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PulseLink - File Sharing'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            filePath != null
                ? Text('Selected file: $filePath')
                : Text('No file selected'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: selectFile,
              child: Text('Pick File'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Placeholder for file transfer logic
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text('File transfer initiated!'),
                ));
              },
              child: Text('Send File'),
            ),
          ],
        ),
      ),
    );
  }
}
