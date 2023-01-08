import 'package:get/get.dart';

import 'package:broshop_app/app/controllers/user_controller.dart';
import 'package:broshop_app/app/modules/home/controllers/product_controller.dart';

import '../../Cart/controllers/cart_controller.dart';
import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProductController>(
      () => ProductController(),
    );
    Get.lazyPut<UserController>(
      () => UserController(),
    );
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
    Get.lazyPut<CartController>(
      () => CartController(),
    );
  }
}
