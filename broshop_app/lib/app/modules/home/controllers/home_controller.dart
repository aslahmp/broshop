import 'package:broshop_app/app/controllers/user_controller.dart';
import 'package:broshop_app/app/routes/app_pages.dart';
import 'package:broshop_app/infrastructure/managers/index.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var userController = Get.find<UserController>();
  @override
  void onInit() {
    userController.getProfile();
    super.onInit();
  }

  void onFloatingActionTap() {
    if (UserManager.isAdmin) {
      Get.toNamed(Routes.PRODUCT_ADD_EDIT);
    } else {}
  }
}
