// ignore_for_file: prefer_const_constructors

import 'package:citizen_star/screens/forgetpassword_mail.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../constant/sizes.dart';
import 'forgetpasswordbtnwidget.dart';


class ForgetPasswordScreen{
 static Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
                              context: context,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0)
                              ),
                              builder: (context) => Container(
                                padding: const EdgeInsets.all(tDefaultSize),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Make Selection!",
                                      style: TextStyle(
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.w700,
                                        fontSize: 22
                                      ),
                                    ),
                                    Text(
                                      "Select one of the options below to reset your password",
                                      style: TextStyle(
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.w300,
                                        fontSize: 14,
                                      ),
                                    ),
                                    const SizedBox(height: 25.0),
                                    ForgetPasswordBtnWidget(
                                      btnIcon: Icons.mail_outline_rounded,
                                      title: "Email",
                                      subTitle: "Reset via Email Verification",
                                      onTap: () {
                                        Navigator.pop(context);
                                        Get.to(() => const ForgetPasswordMail());
                                      },
                                    ),
                                   const SizedBox(height: 20.0),
                                   ForgetPasswordBtnWidget(
                                      btnIcon: Icons.mobile_friendly_rounded,
                                      title: "Phone",
                                      subTitle: "Reset via Phone OTP Verification",
                                      onTap: () {
                                        
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            );
  }
}