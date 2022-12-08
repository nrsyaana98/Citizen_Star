// ignore_for_file: camel_case_types, prefer_const_constructors_in_immutables, prefer_final_fields, unused_field, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:citizen_star/screens/qrcodescanner/qrcode/qr_create.dart';
import 'package:citizen_star/screens/qrcodescanner/qrcode/qr_generator.dart';
import 'package:flutter/material.dart';

class qrCodePage extends StatefulWidget {
  qrCodePage({Key? key}) : super(key: key);

  @override
  State<qrCodePage> createState() => _qrCodePage();
}

class _qrCodePage extends State<qrCodePage> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[qrCodeScanner(), qrCodeGenerator()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF313131),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.qr_code_scanner_sharp),
            label: 'Scan QR Code',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.qr_code_2_sharp),
            label: 'Create Qr Code',
          )
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.white,
        selectedItemColor: Color(0xFF5fa693),
        iconSize: 30,
        onTap: _onItemTapped,
        elevation: 5,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
