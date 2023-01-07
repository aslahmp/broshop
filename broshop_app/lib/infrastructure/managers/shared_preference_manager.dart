import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceManager {
  static final SharedPreferenceManager _sharedInstance =
      SharedPreferenceManager._internal();

  factory SharedPreferenceManager() {
    return _sharedInstance;
  }

  SharedPreferenceManager._internal();
  static SharedPreferenceManager get instance => _sharedInstance;

  void clearDefaults() async {
    final sharedPreference = await SharedPreferences.getInstance();
    sharedPreference.clear();
  }

  void setBoolValue(String key, bool value) async {
    final sharedPreference = await SharedPreferences.getInstance();
    sharedPreference.setBool(key, value);
  }

  Future<bool> getBoolValueFor(String key) async {
    final sharedPreference = await SharedPreferences.getInstance();
    return sharedPreference.getBool(key) ?? false;
  }

  void setValue(String key, String value) async {
    final sharedPreference = await SharedPreferences.getInstance();
    sharedPreference.setString(key, value);
  }

  Future<String> getValueFor(String key) async {
    final sharedPreference = await SharedPreferences.getInstance();
    return sharedPreference.getString(key) ?? "";
  }

  Future<bool> clear(String key) async {
    final sharedPreference = await SharedPreferences.getInstance();
    return sharedPreference.remove(key);
  }
}
