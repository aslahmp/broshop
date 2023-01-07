import 'package:get/get.dart';

import '../../../../infrastructure/managers/index.dart';
import '../../../routes/app_pages.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    checkUserLoginStatus();
    super.onInit();
  }

  void checkUserLoginStatus() async {
    await UserManager.intUser();
    await Future.delayed(const Duration(seconds: 1));
    if (UserManager.isUserLogged) {
      Get.offNamed(Routes.HOME);
    } else {
      Get.offNamed(Routes.LOGIN);
    }
  }
}
