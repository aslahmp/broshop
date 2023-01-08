import 'package:broshop_app/infrastructure/managers/index.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../infrastructure/index.dart';
import '../../../../data/model/product_model.dart';
import '../../controllers/product_controller.dart';

class ProductTile extends GetView<ProductController> {
  const ProductTile({
    Key? key,
    required this.product,
  }) : super(key: key);

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(), borderRadius: BorderRadius.circular(30)),
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.network(
              product.image,
              width: 80,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                product.name,
                style: AppTextStyles.bold.copyWith(fontSize: 16),
              ),
              verticalSpace(5),
              Text(
                product.price.toStringAsFixed(2),
                style: AppTextStyles.bold
                    .copyWith(fontSize: 20, color: AppColors.green),
              ),
              verticalSpace(5),
              SizedBox(
                width: Get.size.width - 130,
                child: Text(
                  product.highlight,
                  maxLines: 5,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyles.regular.copyWith(
                      fontSize: 12, color: AppColors.black.withOpacity(.8)),
                ),
              ),
              verticalSpace(10),
              if (!((!UserManager.isAdmin) && (!product.status)))
                SizedBox(
                    width: 150,
                    height: 30,
                    child: ElevatedButton(
                      onPressed: () {
                        controller.productAction(product);
                      },
                      style: AppConstants.buttonStyle,
                      child: Text(
                        UserManager.isAdmin ? "Edit product" : "Add to cart",
                        style: AppTextStyles.bold
                            .copyWith(color: AppColors.white, fontSize: 14),
                      ),
                    )),
              verticalSpace(10),
              if (!product.status)
                Text(
                  "Currently unavailable",
                  style: AppTextStyles.bold
                      .copyWith(color: AppColors.brantRed, fontSize: 14),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
