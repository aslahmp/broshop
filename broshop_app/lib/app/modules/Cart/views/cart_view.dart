import 'package:broshop_app/app/modules/Cart/views/local.widgets/bottom_tile.dart';
import 'package:broshop_app/app/modules/Cart/views/local.widgets/cart_tile.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/cart_controller.dart';

class CartView extends GetView<CartController> {
  const CartView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('CartView'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Expanded(
              child: GetBuilder<CartController>(
                builder: (_) {
                  return ListView.builder(
                      itemCount: controller.products.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return CartTile(
                          product: controller.products[index],
                          delete: () {
                            controller.remove(index);
                          },
                        );
                      });
                },
              ),
            ),
            const BottomTile()
          ],
        ));
  }
}
