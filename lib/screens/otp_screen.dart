// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:citizen_star/constant/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(tDefaultSize),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "CO\nDE",
              style: TextStyle(
                fontFamily: "Montserrat",
                fontWeight: FontWeight.bold,
                fontSize: 60.0,
              ),
            ),
            Text(
              "Verification".toUpperCase(),
              style: TextStyle(
                fontFamily: "Montserrat",
                fontWeight: FontWeight.bold,
                fontSize: 14
              ),
            ),
            const SizedBox(height: 10.0),
            const Text(
              "Enter the verification code sent at nrsyaana98@gmail.com",
              style: TextStyle(
                fontFamily: "Poppins",
                fontWeight: FontWeight.w300,
                fontSize: 14
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20.0,),
            OtpTextField(
              numberOfFields: 6,
              fillColor: Colors.black.withOpacity(0.1),
              filled: true,
              // onSubmit: (code){print("OTP is => $code");},
            ),
            const SizedBox(height: 20.0,),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
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
        ),
      ),
    );
  }
}