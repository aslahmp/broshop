import 'index.dart';

class UserManager {
  static var userId = '';
  static var isUserLogged = false;
  static var isAdmin = false;

  static Future<void> intUser() async {
    userId = await SharedPreferenceManager.instance.getValueFor("userId");
    isUserLogged =
        await SharedPreferenceManager.instance.getBoolValueFor("isUserLogged");
    isAdmin = await SharedPreferenceManager.instance.getBoolValueFor("isAdmin");
  }

  static Future<void> saveUserId(String id) async {
    SharedPreferenceManager.instance.setValue("userId", id);
  }

  static Future<void> setUserAdminStatusStatus(bool setBoolValue) async {
    SharedPreferenceManager.instance.setBoolValue("isAdmin", setBoolValue);
  }

  static Future<void> setUserLoginStatus(bool status) async {
    SharedPreferenceManager.instance.setBoolValue("isUserLogged", status);
  }

  static Future<void> logOutUser() async {
    SharedPreferenceManager.instance.clearDefaults();
    intUser();
  }
}
