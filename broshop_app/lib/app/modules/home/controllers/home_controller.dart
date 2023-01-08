import 'package:broshop_app/app/controllers/user_controller.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var userController = Get.find<UserController>();
  @override
  void onInit() {
    userController.getProfile();
    super.onInit();
  }
}
