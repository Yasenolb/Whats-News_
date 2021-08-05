import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper2 {
  static SharedPreferences sharedPreferences2;

  static inita() async {
    sharedPreferences2 = await SharedPreferences.getInstance();
  }

  static Future<bool> putData2(
      @required String key2,
      @required bool value2,) async {
    return await sharedPreferences2.setBool(key2, value2);
  }

  static bool getData2(String key2,) {

    return   sharedPreferences2.getBool(key2);
  }

  static Future<bool> saveData2() {}
}