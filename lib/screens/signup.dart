// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, must_be_immutable

import 'package:citizen_star/constant/sizes.dart';
import 'package:citizen_star/widget/formheaderwidget.dart';
import 'package:citizen_star/widget/signformwidget.dart';
import 'package:flutter/material.dart';
// import 'package:select_form_field/select_form_field.dart';

class SignUp extends StatefulWidget {
   const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context){
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(tDefaultSize),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               FormHeader(
                image: "assets/picture/welcome.png", 
                title: "Get on Board!", 
                subTitle: "Create your profile to start your Journey",
               ),
               const SignupFormWidget(),
              //  Column(
              //    mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     TextButton(
              //       onPressed: () {},  
              //       child: Text.rich(
              //         TextSpan(
              //           children: [
              //             TextSpan(
              //               text: "Already have an Account? ",
              //               style: TextStyle(
              //                 color: Color(0xFF272727),
              //                 fontFamily: "Poppins",
              //                 fontWeight: FontWeight.normal,
              //                 fontSize: 14,
                              
              //               )
              //             ),
                          
              //             TextSpan(
              //               text: "Login".toUpperCase(),
              //             )
              //           ]
              //         )
              //       )
              //     )
              //   ],
              //  )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

