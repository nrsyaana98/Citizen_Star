import 'dart:convert';
import 'package:citizen_star/constant/user.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RememberUserPrefs
{
  static Future<void> rememberUser(User userInfo) async
  {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String userJsonData = jsonEncode(userInfo.toJson());
    await preferences.setString("currentUser", userJsonData);

  }
}