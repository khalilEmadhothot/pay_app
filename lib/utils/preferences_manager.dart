
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PreferencesManager extends GetxService{
  static late SharedPreferences _sharedPreferences;

  Future<PreferencesManager> initial() async {
    _sharedPreferences = await SharedPreferences.getInstance();
    return this;
  }

  static dynamic getAppData({required String key}) {
    return _sharedPreferences.get(key);
  }
//الميثد لا ايش ما يجي داتا بخزن فيها
  static Future<dynamic> saveAppData(
      {required key, required dynamic value}) async {
    if (value is String) return await _sharedPreferences.setString(key, value);
    if (value is int) return await _sharedPreferences.setInt(key, value);
    if (value is bool) return await _sharedPreferences.setBool(key, value);
    if (value is double) return await _sharedPreferences.setDouble(key, value);
  }

  static Future<bool> saveUserToken(
      {required key, required String token}) async {
    return await _sharedPreferences.setString(key, token);
  }

  static dynamic getUserToken({required String key}) {
    return _sharedPreferences.get(key);
  }

  static Future<bool> clearData({required String key}) async {
    return await _sharedPreferences.remove(key);
  }

  static Future<bool> clearAllData() async {
    return await _sharedPreferences.clear();
  }
}