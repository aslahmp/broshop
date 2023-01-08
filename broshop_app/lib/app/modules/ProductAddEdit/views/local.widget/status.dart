import 'package:broshop_app/infrastructure/index.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/product_add_edit_controller.dart';

class Status extends GetView<ProductAddEditController> {
  const Status({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        horizontalSpace(20),
        Obx(() => Checkbox(
            value: controller.isActive.value,
            onChanged: (value) {
              controller.isActive(value);
            })),
        const Text(
          'Status',
          style: TextStyle(fontSize: 20),
        ),
      ],
    );
  }
}
