// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class FormHeader extends StatelessWidget{
  const FormHeader({Key? key,
    required this.image,
    required this.title,
    required this.subTitle,
    this.heightBetween,
    this.textAlign,
    this.crossAxisAlignment = CrossAxisAlignment.start,
  }) : super(key: key);

  final String image, title, subTitle;
  final CrossAxisAlignment crossAxisAlignment;
  final double? heightBetween;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context){
    final size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          image: AssetImage(image),
          height: size.height * 0.3,
        ),
        Text(
          title,
          style: TextStyle(
            fontFamily: "Poppins",
            fontWeight: FontWeight.w700,
            fontSize: 28
          ),
        ),
         Text(
          subTitle,
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