import 'package:get/get.dart';

import '../controllers/product_add_edit_controller.dart';

class ProductAddEditBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProductAddEditController>(
      () => ProductAddEditController(),
    );
  }
}
