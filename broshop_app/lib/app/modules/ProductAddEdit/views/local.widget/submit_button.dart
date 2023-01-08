import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../infrastructure/index.dart';
import '../../controllers/product_add_edit_controller.dart';

class SubmitButton extends GetView<ProductAddEditController> {
  const SubmitButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        padding: const EdgeInsets.all(AppConstants.padding),
        width: double.infinity,
        child: ElevatedButton(
          onPressed:
              controller.isLoading.value ? null : () => controller.submit(),
          style: AppConstants.buttonStyle,
          child: controller.isLoading.value
              ? const SizedBox(
                  width: 30,
                  height: 30,
                  child: CircularProgressIndicator(),
                )
              : Text(
                  "Submit",
                  style: AppTextStyles.bold
                      .copyWith(color: AppColors.white, fontSize: 16),
                ),
        ),
      ),
    );
  }
}
