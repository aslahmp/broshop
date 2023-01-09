import 'package:broshop_app/app/controllers/user_controller.dart';
import 'package:broshop_app/app/modules/home/controllers/product_controller.dart';
import 'package:broshop_app/app/routes/app_pages.dart';
import 'package:broshop_app/infrastructure/managers/index.dart';
import 'package:broshop_app/infrastructure/managers/location_manager.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var userController = Get.find<UserController>();
  @override
  void onInit() {
    userController.getProfile();
    fetchUserLocation();
    super.onInit();
  }

  void fetchUserLocation() async {
    var location = await LocationManager.instance.getCurrentLocation();
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
