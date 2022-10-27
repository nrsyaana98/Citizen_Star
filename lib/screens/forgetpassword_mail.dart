// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:citizen_star/constant/sizes.dart';
import 'package:citizen_star/screens/otp_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPasswordMail extends StatelessWidget{
  const ForgetPasswordMail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(tDefaultSize),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: tDefaultSize*3),
            Image(
              image: AssetImage("assets/picture/forget_password.png"),
              height: size.height * 0.3,
            ),
            SizedBox(height: tDefaultSize),
            Text(
              "Forget Password",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: "Poppins",
                fontWeight: FontWeight.w700,
                fontSize: 24
              ),
            ),
            Text(
              "Please key in your email",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: "Poppins",
                fontWeight: FontWeight.w300,
                fontSize: 16
              ),
            ),
            SizedBox(height: tFormHeight),
            Form(
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      label: Text(
                        "Email"
                      ),
                      hintText: "Email",
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(
                        Icons.mail_outline_rounded,
                        color: Color(0xFF272727)
                      ),
                      labelStyle: TextStyle(
                        color: Color(0xFF272727)
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width:2.0, color: Color(0xFF272727))
                      )
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                    onPressed: () {
                      Get.to(() => const OTPScreen());
                    }, 
                    style: OutlinedButton.styleFrom(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.black,
                      side: BorderSide(color: Color(0xFF272727)),
                      padding: EdgeInsets.symmetric(vertical: tButtonHeight)
                    ),
                    child: Text("Next"),
                   ),
                  ),
                ],
              )
            )
          ],
        ),
      ),
    )
  );
  }
}