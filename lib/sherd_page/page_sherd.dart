import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper3 {
  static SharedPreferences sharedPreferences3;

  static initp() async {
    sharedPreferences3 = await SharedPreferences.getInstance();
  }

  static Future<bool> putData3(
      @required String key3,
      @required bool value3,) async {
    return await sharedPreferences3.setBool(key3, value3);
  }

  static bool getData3(String key3,) {

    return   sharedPreferences3.getBool(key3);
  }

  static Future<bool> saveData3() {}
}