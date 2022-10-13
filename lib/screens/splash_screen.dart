// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_build_context_synchronously, must_call_super

import 'package:citizen_star/controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget{
  SplashScreen({Key? key}) : super(key: key);

  final splashController = Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context){
    splashController.startAnimation();
    return Scaffold(
      body: SafeArea(
        child:  Stack(
            children: [
              Obx(
                () => AnimatedPositioned(
                  top: splashController.animate.value ? 0 : -30,
                  left: splashController.animate.value ? 0 : -30,
                  duration: const Duration(milliseconds: 1600),
                  child: Image(
                    image: AssetImage('assets/picture/splash-blue.png'),
                  )
                ),
              ),
               Obx(
                 () => AnimatedPositioned(
                  top: 90,
                  left: splashController.animate.value ? 30 : -80,
                  duration: const Duration(milliseconds: 1600),
                  child: AnimatedOpacity(
                    duration: const Duration(milliseconds: 1600), 
                    opacity: splashController.animate.value ? 1 : 0,
                  
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Citizen Star",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.normal,
                          fontSize: 20
                        ),
                      ),
                      Text(
                        "National Transformation \nBooster",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w700,
                          fontSize: 20 
                        ),
                      )
                    ],
                  )
                             )
                           ),
               ),
              Obx(
                () => AnimatedPositioned(
                  duration: const Duration(milliseconds: 2400),
                  bottom:  splashController.animate.value ? 60 : 0,
                  right:  splashController.animate.value ? 30 : 0,
                  child: AnimatedOpacity(
                    opacity:  splashController.animate.value ? 1 : 0, 
                    duration: const Duration(milliseconds: 2000),
                    child: Image(
                    image: AssetImage('assets/picture/splash-screen-image.png'),
                    ),
                  ),
                ),
              ),
              Obx(
                () => AnimatedPositioned(
                  duration: const Duration(milliseconds: 2400),
                  bottom:  splashController.animate.value ? 40 : 0,
                  right: 30,
                  child: AnimatedOpacity(
                    duration: const Duration(milliseconds: 2000),
                    opacity:  splashController.animate.value ? 1 : 0,
                  child: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                       color: Color(0xFFbfe2df),
                      ),
                   
                    ),
                  ),
                ),
              )
            ]
          ),
       ),
    );
  }

}

