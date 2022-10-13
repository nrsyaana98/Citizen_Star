// ignore_for_file: prefer_const_constructors

import 'package:citizen_star/constant/sizes.dart';
import 'package:flutter/material.dart';

class SignupFormWidget extends StatelessWidget {
  const SignupFormWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
     padding: const EdgeInsets.symmetric(vertical: tFormHeight - 10),
     child: Form(
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           TextFormField(
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
             decoration: const InputDecoration(
               label: Text('Gender'),
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
                 onPressed: () {},
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