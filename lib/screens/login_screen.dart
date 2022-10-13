// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:citizen_star/constant/sizes.dart';
import 'package:citizen_star/screens/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(tDefaultSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //section1
                Image(
                  image: 
                    const AssetImage('assets/picture/welcome.png'), height: size.height * 0.35,),
                Text(
                  "Welcome Back!", 
                  style:  TextStyle( 
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                  fontSize: 28.0

                   ),
                  ),
                Text(
                  "Make it Work, Make it Right, Make it Fast", 
                  style: TextStyle( 
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w300,
                  fontSize: 14.0

                   ),
                  ),

                //section2
                Form(
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: tFormHeight - 10),
                    child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                        TextFormField(
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.person_outline_outlined),
                            labelText: "Email",
                            hintText: "Email",
                            border: OutlineInputBorder()
                          ),
                        ),
                        SizedBox(height: tFormHeight,),
                         TextFormField(
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.fingerprint),
                            labelText: "Password",
                            hintText: "Password",
                            border: OutlineInputBorder(),
                            suffixIcon: IconButton(
                              onPressed: null, 
                              icon: Icon(Icons.remove_red_eye_sharp),
                            ),
                          ),
                        ),
                        const SizedBox(height: tFormHeight - 20,),
                        Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                            onPressed: () {},
                            child: const Text("Forget Password"),
                          ),
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: (() => Get.to(() => const Dashboard()) ) ,
                            style:OutlinedButton.styleFrom(
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              foregroundColor: Colors.white,
                              backgroundColor: Color(0xFF272727),
                              side: BorderSide(color: Color(0xFF272727)),
                              padding: EdgeInsets.symmetric(vertical: tButtonHeight),
                          ),
                            child: Text("Login".toUpperCase()),
                          ),
                        )
                       ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  
  }
}