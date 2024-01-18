import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mlfluttertf/Widgets/Appbar.dart';

class ImagePickerWidget extends StatefulWidget {
  const ImagePickerWidget({Key? key}) : super(key: key);

  @override
  State<ImagePickerWidget> createState() => _ImagePickerState();
}

class _ImagePickerState extends State<ImagePickerWidget> {
  final ImagePicker _picker = ImagePicker();
  File? _image;

  chooseImages() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      setState(() {
        _image = File(image.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar("Image Picker"),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _image != null
                ? Image.file(_image!)
                : Icon(Icons.image, size: 150, color: Colors.black),
            ElevatedButton(
              onPressed: () {
                chooseImages();
              },
              child: Text("Image Picker"),
            ),
          ],
        ),
      ),
    );
  }
}
