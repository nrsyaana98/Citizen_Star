// ignore_for_file: prefer_const_constructors_in_immutables, camel_case_types, prefer_const_constructors, avoid_init_to_null
// import 'package:camera/camera.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class Camera extends StatefulWidget {
  Camera({Key? key}) : super(key: key);

  @override
  State<Camera> createState() => _Camera();
}

class _Camera extends State<Camera> {
  final ImagePicker _picker = ImagePicker();
  File? _image = null;

  Future getImage() async {
    final image = await _picker.pickImage(source: ImageSource.camera);

    setState(() {
      _image = File(image!.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child:
              _image == null ? Text('No Image Selected') : Image.file(_image!)),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: getImage,
        child: Icon(Icons.camera_alt_sharp),
      ),
    );
  }
}
