import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../infrastructure/index.dart';
import '../../../../data/model/product_model.dart';

class CartTile extends StatelessWidget {
  const CartTile({
    Key? key,
    required this.delete,
    required this.product,
  }) : super(key: key);

  final ProductModel product;
  final Function delete;
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
              IconButton(
                  onPressed: () {
                    delete();
                  },
                  icon: Icon(
                    Icons.delete,
                    color: AppColors.darkRed,
                  )),
              verticalSpace(10),
            ],
          ),
        ],
      ),
    );
  }
}
