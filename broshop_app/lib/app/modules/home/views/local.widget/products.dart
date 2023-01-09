import 'package:broshop_app/app/modules/home/controllers/product_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import 'product_tile.dart';

class Products extends GetView<ProductController> {
  const Products({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProductController>(
      builder: (_) {
        return ListView.builder(
            itemCount: controller.products.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return ProductTile(product: controller.products[index]);
            });
      },
    );
  }
}
