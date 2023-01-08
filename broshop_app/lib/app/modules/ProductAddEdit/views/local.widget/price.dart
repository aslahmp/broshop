import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../infrastructure/index.dart';
import '../../controllers/product_add_edit_controller.dart';

class Price extends GetView<ProductAddEditController> {
  const Price({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: AppConstants.padding, vertical: AppConstants.padding / 2),
      child: TextFormField(
        controller: controller.priceController,
        keyboardType: TextInputType.number,
        inputFormatters: [DecimalTextInputFormatter()],
        validator: Validators.noneEmptyValidator,
        enabled: true,
        decoration: AppInputDecoration.defalt
            .copyWith(prefixIcon: null, hintText: 'Price', labelText: 'Price'),
      ),
    );
  }
}
