// ignore_for_file: camel_case_types, prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_string_interpolations, unused_import

import 'package:citizen_star/screens/qrcodescanner/widget/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:qr_flutter/qr_flutter.dart';
//  import 'package:qr/qr.dart';

class qrCodeScanner extends StatefulWidget {
  qrCodeScanner({Key? key}) : super(key: key);

  @override
  State<qrCodeScanner> createState() => _qrCodeScanner();
}

class _qrCodeScanner extends State<qrCodeScanner> {
  String qrCode = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF313131),
      appBar: AppBar(
        backgroundColor: Colors.black12,
        title: Text('QR Code Scanner',
            style: TextStyle(
              fontFamily: "Poppins",
              fontWeight: FontWeight.bold,
              fontSize: 14,
            )),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Scan Result',
              style: TextStyle(
                fontFamily: "Poppins",
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              '$qrCode',
              style: TextStyle(
                fontFamily: "Poppins",
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            ButtonWidget(
                text: 'Scan Qr Code',
                onClicked: () => scanQrCode(),
                color: Colors.black26)
          ],
        ),
      ),
    );
  }

  Future<void> scanQrCode() async {
    try {
      final qrCode = await FlutterBarcodeScanner.scanBarcode(
          '#5fa693', 'Cancel', true, ScanMode.QR);

      if (!mounted) return;
      setState(() {
        this.qrCode = qrCode.isEmpty
            ? ''
            : qrCode == '-1'
                ? ''
                : qrCode;
      });
    } on PlatformException {
      qrCode = 'Failed to get platform version';
    }
  }
}
