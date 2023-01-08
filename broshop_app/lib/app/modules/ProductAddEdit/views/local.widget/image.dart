import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../infrastructure/index.dart';
import '../../controllers/product_add_edit_controller.dart';

class ImageUrl extends GetView<ProductAddEditController> {
  const ImageUrl({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: AppConstants.padding, vertical: AppConstants.padding / 2),
      child: TextFormField(
        controller: controller.imageUrlController,
        keyboardType: TextInputType.text,
        validator: Validators.noneEmptyValidator,
        enabled: true,
        decoration: AppInputDecoration.defalt.copyWith(
            prefixIcon: null, hintText: 'Image url', labelText: 'Image url'),
      ),
    );
  }
}
