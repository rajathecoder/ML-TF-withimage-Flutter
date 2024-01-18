import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mlfluttertf/Widgets/Appbar.dart';

class Captureimage extends StatefulWidget {
  const Captureimage({Key? key}) : super(key: key);

  @override
  State<Captureimage> createState() => _CaptureimageState();
}

class _CaptureimageState extends State<Captureimage> {
  final ImagePicker _picker = ImagePicker();
  File? _image;

  captureImage() async{
    final XFile? image = await _picker.pickImage(source: ImageSource.camera);
    if (image != null) {
      setState(() {
        _image = File(image.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar("Capture Image"),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _image != null
                ? Image.file(_image!)
                : Icon(Icons.image, size: 150, color: Colors.black),
            ElevatedButton(
              onPressed: () {
                captureImage();
              },
              child: Text("Capture Image"),
            ),
          ],
        ),
      ),
    );
  }
}
