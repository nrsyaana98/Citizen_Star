// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:citizen_star/constant/sizes.dart';
import 'package:citizen_star/screens/login_screen.dart';
import 'package:citizen_star/screens/signup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomeScreen extends StatelessWidget{
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
    Widget build(BuildContext context){
      var mediaQuery = MediaQuery.of(context);
      var height = mediaQuery.size.height;
      return Scaffold(
        backgroundColor: Color(0xFFbfe2df),
        body: Container(
          padding: const EdgeInsets.all(tDefaultSize),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image(
                image: const AssetImage('assets/picture/logo2.png'), height: height * 0.5),
                Column(
                  children: [
                    const Text(
                      "Citizen Star",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w700,
                        fontSize: 28
                      ),
                    ),
                    Text(
                      "The Digital Profile of Citizens’ Achievements, Participation, Contributions & Rewards",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w300,
                        fontSize: 16
                      ),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        onPressed: (() => Get.to(() => const LoginScreen()) ),
                          style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                              side: BorderSide(color: Color(0xFF272727))
                            ),
                            foregroundColor: Color(0xFF272727),
                            padding: EdgeInsets.symmetric(vertical: tButtonHeight)
                          ), 
                          child: Text("Login".toUpperCase()),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: (() => Get.to(() => const SignUp()) ),
                        style: OutlinedButton.styleFrom(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          foregroundColor: Colors.white,
                          backgroundColor: Color(0xFF272727),
                          side: BorderSide(color: Color(0xFF272727)),
                          padding: EdgeInsets.symmetric(vertical: tButtonHeight),
                        ),
                        child: Text("Signup".toUpperCase()),
                      )
                    )
                  ],
              )
            ],
          )
        ),
      );
  }
}