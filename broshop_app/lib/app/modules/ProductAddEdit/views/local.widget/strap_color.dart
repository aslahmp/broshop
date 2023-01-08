import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../infrastructure/index.dart';
import '../../controllers/product_add_edit_controller.dart';

class StrapColor extends GetView<ProductAddEditController> {
  const StrapColor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: AppConstants.padding, vertical: AppConstants.padding / 2),
      child: TextFormField(
        controller: controller.strapColorController,
        keyboardType: TextInputType.text,
        validator: Validators.noneEmptyValidator,
        enabled: true,
        decoration: AppInputDecoration.defalt.copyWith(
            prefixIcon: null,
            hintText: 'Strap color',
            labelText: 'Strap color'),
      ),
    );
  }
}
