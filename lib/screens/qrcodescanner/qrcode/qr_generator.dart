// ignore_for_file: camel_case_types, prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'dart:math' as math;

class qrCodeGenerator extends StatefulWidget {
  qrCodeGenerator({Key? key}) : super(key: key);

  @override
  State<qrCodeGenerator> createState() => _qrCodeGenerator();
}

class _qrCodeGenerator extends State<qrCodeGenerator> {
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF313131),
      appBar: AppBar(
        backgroundColor: Colors.black12,
        title: Text('QR Code Generator',
            style: TextStyle(
              fontFamily: "Poppins",
              fontWeight: FontWeight.bold,
              fontSize: 14,
            )),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              QrImage(
                data: controller.text,
                size: (math.min(MediaQuery.of(context).size.width,
                        MediaQuery.of(context).size.width)) /
                    1.3,
                backgroundColor: Colors.white,
              ),
              SizedBox(
                height: 40,
              ),
              buildTextField(context),
            ],
          ),
        ),
      ),
    );
  }

  buildTextField(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: TextField(
        controller: controller,
        style: TextStyle(
          color: Colors.white,
          fontFamily: "Poppins",
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
        decoration: InputDecoration(
            hintText: 'Enter the Data',
            hintStyle: TextStyle(
              fontFamily: "Poppins",
              color: Colors.white,
            ),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide(color: Color(0xFF5fa693))),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide(
                  color: Color(0xFF5fa693),
                )),
            suffixIcon: IconButton(
              color: Color(0xFF5fa693),
              icon: Icon(
                Icons.done_all_sharp,
                size: 30,
              ),
              onPressed: () {
                setState(() {});
              },
            )),
      ),
    );
  }
}
