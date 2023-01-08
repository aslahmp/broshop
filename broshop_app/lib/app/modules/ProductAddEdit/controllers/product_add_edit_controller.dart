import 'package:broshop_app/app/data/model/product_model.dart';
import 'package:broshop_app/app/data/repository/product/i_product_repository.dart';
import 'package:broshop_app/app/data/repository/product/product_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../infrastructure/index.dart';

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
    productModel = Get.arguments;
    initEdit();
    super.onInit();
  }

  void initEdit() {
    if (productModel != null) {
      nameController.text = productModel!.name;
      strapColorController.text = productModel!.strapColor;
      priceController.text = productModel!.price.toString();
      highlightController.text = productModel!.highlight;
      imageUrlController.text = productModel!.image;
      isActive.value = productModel!.status;
    }
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
        updateProduct(product);
      } else {
        create(product);
      }
    }
    isLoading(false);
  }

  void updateProduct(ProductModel product) async {
    var result = await _productRepository.updateProduct(product);
    if (result.isSuccess) {
      Get.back();
    } else {
      AppSnackBar.showSnackBar(result.failure);
    }
  }

  void create(ProductModel product) async {
    var result = await _productRepository.createProduct(product);
    if (result.isSuccess) {
      Get.back();
    } else {
      AppSnackBar.showSnackBar(result.failure);
    }
  }
}
