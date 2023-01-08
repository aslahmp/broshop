import 'package:broshop_app/app/modules/ProductAddEdit/controllers/product_add_edit_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../../../../../infrastructure/index.dart';

class Name extends GetView<ProductAddEditController> {
  const Name({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: AppConstants.padding, vertical: AppConstants.padding / 2),
      child: TextFormField(
        controller: controller.nameController,
        keyboardType: TextInputType.text,
        validator: Validators.noneEmptyValidator,
        enabled: true,
        decoration: AppInputDecoration.defalt
            .copyWith(prefixIcon: null, hintText: 'Name', labelText: 'Name'),
      ),
    );
  }
}
