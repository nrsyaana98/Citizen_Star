// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class LoginHeader extends StatelessWidget{
  const LoginHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    final size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          image: const AssetImage('assets/picture/welcome.png'),
          height: size.height * 0.2,
        ),
        Text(
          'Get on Board!',
          style: TextStyle(
            fontFamily: "Poppins",
            fontWeight: FontWeight.w700,
            fontSize: 28
          ),
        ),
         Text(
          'Create your profile to start your Journey',
          style: TextStyle(
            fontFamily: "Poppins",
            fontWeight: FontWeight.w300,
            fontSize: 14
          ),
        )
      ],
    );
  }
}