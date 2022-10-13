// ignore_for_file: prefer_const_constructors

import 'package:citizen_star/screens/welcome_screen.dart';
// import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreenController extends GetxController{

  static SplashScreenController get find => Get.find();

  RxBool animate = false.obs;

  Future startAnimation() async{
    await Future.delayed(Duration(milliseconds: 500));
    animate.value = true;
    await Future.delayed(Duration(milliseconds: 5000));
    Get.to(() => WelcomeScreen());
  }
}