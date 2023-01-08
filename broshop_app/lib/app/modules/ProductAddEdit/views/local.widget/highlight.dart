import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../infrastructure/index.dart';
import '../../controllers/product_add_edit_controller.dart';

class Highlight extends GetView<ProductAddEditController> {
  const Highlight({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: AppConstants.padding, vertical: AppConstants.padding / 2),
      child: TextFormField(
        controller: controller.highlightController,
        keyboardType: TextInputType.text,
        minLines: 1,
        maxLines: 5,
        validator: Validators.noneEmptyValidator,
        enabled: true,
        decoration: AppInputDecoration.defalt.copyWith(
            prefixIcon: null, hintText: 'Highlight', labelText: 'Highlight'),
      ),
    );
  }
}
