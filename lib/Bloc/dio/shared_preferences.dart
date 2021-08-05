import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  static SharedPreferences sharedPreferences;

  static init() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  static Future<bool> putData(
    @required String key,
    @required bool value,
  ) async {
    return await sharedPreferences.setBool(key, value);
  }

  static bool getData(
    String key,
  ) {
    return sharedPreferences.getBool(key);
  }

  static Future<bool> saveData() {}






  //
  //
  // static Future<bool> putData2(
  //     @required String key,
  //     @required bool value,
  //     ) async {
  //   return await sharedPreferences.setBool(key, value);
  // }
  //
  // static bool getData2(
  //     String key,
  //     ) {
  //   return sharedPreferences.getBool(key);
  // }
  //
  // static Future<bool> saveData2() {}
}




























