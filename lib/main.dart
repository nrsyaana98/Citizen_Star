// ignore_for_file: prefer_const_constructors

import 'package:citizen_star/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:citizen_star/screens/welcome_screen.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.leftToRightWithFade,
      transitionDuration: const Duration(milliseconds: 500),
      home: SplashScreen(),
    );
  }
}

