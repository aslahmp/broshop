import 'package:broshop_app/infrastructure/index.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/cart_controller.dart';

class BottomTile extends StatelessWidget {
  const BottomTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CartController>(builder: (controller) {
      return Container(
        decoration: BoxDecoration(color: AppColors.blue),
        width: double.infinity,
        height: 70,
        child: Row(
          children: [
            horizontalSpace(20),
            Text(
              controller.totalAmount.toStringAsFixed(2),
              style: AppTextStyles.bold
                  .copyWith(color: AppColors.white, fontSize: 20),
            ),
            Spacer(),
            ElevatedButton(
              onPressed: () {
                controller.buy();
              },
              style: AppConstants.buttonStyle.copyWith(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(AppColors.green)),
              child: Text(
                "Buy now",
                style: AppTextStyles.bold
                    .copyWith(color: AppColors.black, fontSize: 14),
              ),
            ),
            horizontalSpace(20),
          ],
        ),
      );
    });
  }
}
