// ignore_for_file: prefer_const_constructors, prefer_typing_uninitialized_variables, empty_catches, unused_local_variable, avoid_print

import 'dart:convert';
import 'package:citizen_star/api_connection/api_conn.dart';
import 'package:citizen_star/constant/sizes.dart';
import 'package:citizen_star/constant/user.dart';
import 'package:citizen_star/screens/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';

class SignupFormWidget extends StatefulWidget {
  const SignupFormWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<SignupFormWidget> createState() => _SignupFormWidgetState();
}

class _SignupFormWidgetState extends State<SignupFormWidget> {

var formKey = GlobalKey<FormState>();
TextEditingController usernameController = TextEditingController();
TextEditingController firstnameController = TextEditingController();
TextEditingController lastnameController = TextEditingController();
TextEditingController icController = TextEditingController();
TextEditingController phoneController = TextEditingController();
TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();

validateUserEmail() async
{
  try{
      var res = await http.post(
      Uri.parse(API.validateEmail),
      body: {
        'email': emailController.text.trim(),

      },
    );

    if(res.statusCode == 200) //connection with api to server - success
    {
      var resBody = jsonDecode(res.body);

      if(resBody['emailFound'] == true){
         Fluttertoast.showToast(msg: "Email is already taken! Try another email");
      }
      else{
        //register and save new user record
        registerNewUser();
      }
    }
  }
  catch(e){
    
  }
}

registerNewUser() async
{
  User userModel = User(
    1,
    usernameController.text.trim(),
    firstnameController.text.trim(),
    lastnameController.text.trim(),
    icController.text.trim(),
    phoneController.text.trim(),
    emailController.text.trim(),
    passwordController.text.trim(),

  );

  try{
    
     var res = await http.post(
      Uri.parse(API.register),
      body: userModel.toJson(),
    );

    if(res.statusCode == 200){

      var resBodyRegister = jsonDecode(res.body);

      if(resBodyRegister['success'] == true){
        Fluttertoast.showToast(
          msg: "You have register successfully!",);

          setState(() {
            usernameController.clear();
            firstnameController.clear();
            lastnameController.clear();
            icController.clear();
            phoneController.clear();
            emailController.clear();
            passwordController.clear();
          });

          Future.delayed(Duration(milliseconds: 2000), ()
          {
            Get.to(Dashboard());
          });
      }
      else{
         Fluttertoast.showToast(msg: "Error occured! Please try again.");
      }
    }

  }
  catch(e){
    print(e.toString());
    Fluttertoast.showToast(msg: e.toString());
  }
}
  
  @override
  Widget build(BuildContext context) {
    return Container(
     padding: const EdgeInsets.symmetric(vertical: tFormHeight - 10),
     child: Form(
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           TextFormField(
            controller: usernameController,
             decoration: const InputDecoration(
               label: Text('Username'),
               border: OutlineInputBorder(),
               prefixIcon: Icon(
                 Icons.person_outline_rounded,
                 color: Color(0xFF272727),
               ),
               labelStyle: TextStyle(
                 color: Color(0xFF272727),
               ),
               focusedBorder: OutlineInputBorder(
                 borderSide: BorderSide(width: 2.0, color: Color(0xFF272727))
               )
             ),
           ),
           const SizedBox(height: tFormHeight-20),
            TextFormField(
              controller: firstnameController,
             decoration: const InputDecoration(
               label: Text('First Name'),
               border: OutlineInputBorder(),
               prefixIcon: Icon(
                 Icons.person_outline_rounded,
                 color: Color(0xFF272727),
               ),
               labelStyle: TextStyle(
                 color: Color(0xFF272727),
               ),
               focusedBorder: OutlineInputBorder(
                 borderSide: BorderSide(width: 2.0, color: Color(0xFF272727))
               )
             ),
           ),
           const SizedBox(height: tFormHeight-20),
            TextFormField(
              controller: lastnameController,
             decoration: const InputDecoration(
               label: Text('Last Name'),
               border: OutlineInputBorder(),
               prefixIcon: Icon(
                 Icons.person_outline_rounded,
                 color: Color(0xFF272727),
               ),
               labelStyle: TextStyle(
                 color: Color(0xFF272727),
               ),
               focusedBorder: OutlineInputBorder(
                 borderSide: BorderSide(width: 2.0, color: Color(0xFF272727))
               )
             ),
           ),
           const SizedBox(height: tFormHeight-20),
           TextFormField(
            controller: icController,
             decoration: const InputDecoration(
               label: Text('Identification Number (IC)'),
               border: OutlineInputBorder(),
               prefixIcon: Icon(
                 Icons.card_giftcard_outlined,
                 color: Color(0xFF272727),
               ),
               labelStyle: TextStyle(
                 color: Color(0xFF272727),
               ),
               focusedBorder: OutlineInputBorder(
                 borderSide: BorderSide(width: 2.0, color: Color(0xFF272727))
               )
             ),
           ),
           const SizedBox(height: tFormHeight-20),
            TextFormField(
              controller: phoneController,
             decoration: const InputDecoration(
               label: Text('Phone'),
               border: OutlineInputBorder(),
               prefixIcon: Icon(
                 Icons.phone_android_rounded,
                 color: Color(0xFF272727),
               ),
               labelStyle: TextStyle(
                 color: Color(0xFF272727),
               ),
               focusedBorder: OutlineInputBorder(
                 borderSide: BorderSide(width: 2.0, color: Color(0xFF272727))
               )
             ),
           ),
           const SizedBox(height: tFormHeight-20),
            TextFormField(
              controller: emailController,
             decoration: const InputDecoration(
               label: Text('Email'),
               border: OutlineInputBorder(),
               prefixIcon: Icon(
                 Icons.email_outlined,
                 color: Color(0xFF272727),
               ),
               labelStyle: TextStyle(
                 color: Color(0xFF272727),
               ),
               focusedBorder: OutlineInputBorder(
                 borderSide: BorderSide(width: 2.0, color: Color(0xFF272727))
               )
             ),
           ),
           const SizedBox(height: tFormHeight-20),
            TextFormField(
              controller: passwordController,
             decoration: const InputDecoration(
               label: Text('Password'),
               border: OutlineInputBorder(),
               prefixIcon: Icon(
                 Icons.fingerprint,
                 color: Color(0xFF272727),
               ),
               labelStyle: TextStyle(
                 color: Color(0xFF272727),
               ),
               focusedBorder: OutlineInputBorder(
                 borderSide: BorderSide(width: 2.0, color: Color(0xFF272727))
               )
             ),
           ),
           const SizedBox(height: tFormHeight-10),
            SizedBox(
               width: double.infinity,
               child: ElevatedButton(
                 onPressed: () {
                  validateUserEmail();
                 },
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
                 child: Text("Signup".toUpperCase()),
               ),
             ),
               const SizedBox(height: tFormHeight-20),
               TextButton(
                    onPressed: () {},  
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: "Already have an Account? ",
                            style: TextStyle(
                              color: Color(0xFF272727),
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.normal,
                              fontSize: 14,
                              
                            )
                          ),
                          
                          TextSpan(
                            text: "Login".toUpperCase(),
                          )
                        ]
                      )
                    )
                  )
         ],
       ),
     ),
    );
  }
}