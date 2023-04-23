import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  static late SharedPreferences prefs;
  static Future<void> init() async {
    prefs = await SharedPreferences.getInstance();
  }

  static bool containsKey(String key) {
    return prefs.containsKey(key);
  }

  static void remove(String key) {
    prefs.remove(key);
  }

  static Future<bool> setString(String key, String value) async {
    return prefs.setString(key, value); //?? Future.value(false);
  }
   static String getString(String key, [String? defValue]) {
    return prefs.getString(key) ?? defValue ?? "";
  }


  static bool getBool(String key, [bool? defValue]) {
    return prefs.getBool(key) ?? defValue ?? false;
  }

  static Future<bool> setBool(String key, bool value) async {
    return prefs.setBool(key, value); //?? Future.value(false);
  }

  static int getInt(String key, [int? defValue]) {
    return prefs.getInt(key) ?? defValue ?? 0;
  }

  static Future<bool> setInt(String key, int value) async {
    return prefs.setInt(key, value); // ?? Future.value(false);
  }
}
