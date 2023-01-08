import 'package:broshop_app/app/data/model/product_model.dart';
import 'package:broshop_app/app/modules/Cart/controllers/cart_controller.dart';
import 'package:broshop_app/app/routes/app_pages.dart';
import 'package:broshop_app/infrastructure/managers/index.dart';
import 'package:get/get.dart';

import '../../../../infrastructure/index.dart';
import '../../../data/repository/product/i_product_repository.dart';
import '../../../data/repository/product/product_repository.dart';

class ProductController extends GetxController {
  var products = <ProductModel>[];
  final IProductRepository _productRepository = ProductRepository();

  @override
  void onInit() {
    getProducts();
    super.onInit();
  }

  void productAction(ProductModel productModel) async {
    if (UserManager.isAdmin) {
      await Get.toNamed(Routes.PRODUCT_ADD_EDIT, arguments: productModel);
      getProducts();
    } else {
      var cartController = Get.find<CartController>();
      cartController.products.add(productModel);
    }
  }

  void productDelete(ProductModel productModel) async {
    if (UserManager.isAdmin) {
      var result = await _productRepository.delete(productModel.id ?? '');
      if (result.isSuccess) {
        AppSnackBar.showSnackBar('product deleted');

        getProducts();
      }
    }
  }

  void getProducts() async {
    var result = await _productRepository.getProduct();
    if (result.isSuccess) {
      products = result.success;
      update();
    }
  }
}
