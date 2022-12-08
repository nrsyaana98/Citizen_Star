// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_print, avoid_returning_null_for_void

import 'package:citizen_star/screens/camera.dart';
import 'package:citizen_star/screens/qrcodescanner/qrcode_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('syaana',
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                )),
            accountEmail: Text('nrsyaana98@gmail.com',
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.normal,
                  fontSize: 14,
                )),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: const Image(
                  image: AssetImage('assets/picture/profile.png'),
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Color(0xFF272727),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.camera_alt_sharp,
              color: Colors.black,
            ),
            title: Text('Camera',
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                )),
            onTap: () {
              Get.to(() => Camera());
            },
          ),
          ListTile(
            leading: Icon(
              Icons.qr_code_2_sharp,
              color: Colors.black,
            ),
            title: Text('QR Code',
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                )),
            onTap: () {
              Get.to(() => qrCodePage());
            },
          ),
        ],
      ),
    );
  }
}
