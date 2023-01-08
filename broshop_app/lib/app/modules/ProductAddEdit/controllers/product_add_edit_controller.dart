import 'package:broshop_app/app/data/model/product_model.dart';
import 'package:broshop_app/app/data/repository/product/i_product_repository.dart';
import 'package:broshop_app/app/data/repository/product/product_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductAddEditController extends GetxController {
  var formKey = GlobalKey<FormState>();
  var nameController = TextEditingController();
  var strapColorController = TextEditingController();
  var imageUrlController = TextEditingController();
  var priceController = TextEditingController();
  var highlightController = TextEditingController();
  var isActive = true.obs;
  var isLoading = false.obs;
  final IProductRepository _productRepository = ProductRepository();
  ProductModel? productModel;
  @override
  void onInit() {
    super.onInit();
  }

  void submit() async {
    isLoading(true);
    if (formKey.currentState!.validate()) {
      var product = ProductModel(
          name: nameController.text,
          strapColor: strapColorController.text,
          highlight: highlightController.text,
          image: imageUrlController.text,
          price: num.parse(priceController.text),
          status: isActive.value);
      if (productModel != null) {
        product.id = productModel!.id;
        _productRepository.updateProduct(product);
      } else {
        _productRepository.createProduct(product);
      }
      isLoading(false);
    }
  }
}
