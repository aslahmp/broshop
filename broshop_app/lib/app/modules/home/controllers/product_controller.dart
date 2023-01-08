import 'package:broshop_app/app/data/model/product_model.dart';
import 'package:get/get.dart';

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

  void productAction(ProductModel productModel) {}
  void getProducts() async {
    var result = await _productRepository.getProduct();
    if (result.isSuccess) {
      products = result.success;
      update();
    }
  }
}
