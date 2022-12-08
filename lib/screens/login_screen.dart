// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_interpolation_to_compose_strings, avoid_print

import 'dart:convert';

import 'package:citizen_star/api_connection/api_conn.dart';
import 'package:citizen_star/constant/sizes.dart';
import 'package:citizen_star/constant/user.dart';
import 'package:citizen_star/controller/user_pref.dart';
import 'package:citizen_star/screens/dashboard.dart';
// import 'package:citizen_star/widget/forgetpasswordsheet.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:fluttertoast/fluttertoast.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  loginUser() async {
    var res = await http.post(
      Uri.parse(API.login),
      body: {
        "email": emailController.text.trim(),
        "password": passwordController.text.trim(),
      },
    );

    if (res.statusCode == 200) {
      var resBodyLogin = jsonDecode(res.body);

      if (resBodyLogin["success"] == true) {
        Fluttertoast.showToast(
          msg: "You have login successfully!",
        );

        User userInfo = User.fromJson(resBodyLogin['userData']);

        await RememberUserPrefs.rememberUser(userInfo);

        Future.delayed(Duration(milliseconds: 2000), () {
          Get.to(() => Dashboard());
        });
      } else {
        Fluttertoast.showToast(
            msg:
                "Incorrect credentials! Please key in the correct email or password.");
      }
    }
  }

  @override
  Widget build(BuildContext context) {
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
                  image: const AssetImage('assets/picture/welcome.png'),
                  height: size.height * 0.35,
                ),
                Text(
                  "Welcome Back!",
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      fontSize: 28.0),
                ),
                Text(
                  "Make it Work, Make it Right, Make it Fast",
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w300,
                      fontSize: 14.0),
                ),

                //section2
                Form(
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: tFormHeight - 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextFormField(
                          controller: emailController,
                          decoration: const InputDecoration(
                              prefixIcon: Icon(Icons.person_outline_outlined),
                              labelText: "Email",
                              hintText: "Email",
                              border: OutlineInputBorder()),
                        ),
                        SizedBox(
                          height: tFormHeight,
                        ),
                        TextFormField(
                          controller: passwordController,
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
                        const SizedBox(
                          height: tFormHeight - 20,
                        ),
                        // Align(
                        //   alignment: Alignment.centerRight,
                        //   child: TextButton(
                        //     onPressed: () {
                        //       ForgetPasswordScreen.buildShowModalBottomSheet(context);
                        //     },
                        //     child: const Text("Forget Password"),
                        //   ),
                        // ),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              loginUser();

                              // (Get.to(Dashboard()));
                            },
                            style: OutlinedButton.styleFrom(
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              foregroundColor: Colors.white,
                              backgroundColor: Color(0xFF272727),
                              side: BorderSide(color: Color(0xFF272727)),
                              padding:
                                  EdgeInsets.symmetric(vertical: tButtonHeight),
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
