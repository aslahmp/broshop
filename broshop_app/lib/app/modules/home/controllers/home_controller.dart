import 'package:broshop_app/app/controllers/user_controller.dart';
import 'package:broshop_app/app/modules/home/controllers/product_controller.dart';
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

  void onFloatingActionTap() async {
    if (UserManager.isAdmin) {
      await Get.toNamed(Routes.PRODUCT_ADD_EDIT);
      var productController = Get.find<ProductController>();
      productController.getProducts();
    } else {
      Get.toNamed(Routes.CART);
    }
  }
}
