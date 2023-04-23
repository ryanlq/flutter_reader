import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesHelper {
  static late SharedPreferences _sharedPreferences;

  // 初始化
  static Future init() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  // 保存数据
  static Future setString(String key, String value) async {
    await _sharedPreferences.setString(key, value);
  }

  static Future setInt(String key, int value) async {
    await _sharedPreferences.setInt(key, value);
  }

  static Future setBool(String key, bool value) async {
    await _sharedPreferences.setBool(key, value);
  }

  // 读取数据
  static String? getString(String key) {
    return _sharedPreferences.getString(key);
  }

  static int? getInt(String key) {
    return _sharedPreferences.getInt(key);
  }

  static bool? getBool(String key) {
    return _sharedPreferences.getBool(key);
  }

  // 删除指定key的数据
  static Future remove(String key) async {
    await _sharedPreferences.remove(key);
  }

  // 清除所有的缓存数据
  static Future clear() async {
    await _sharedPreferences.clear();
  }
}
