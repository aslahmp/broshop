import 'package:broshop_app/app/modules/Cart/controllers/payment_controller.dart';
import 'package:broshop_app/infrastructure/index.dart';
import 'package:get/get.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

import '../../../data/model/product_model.dart';

class CartController extends GetxController {
  var products = <ProductModel>[];
  num get totalAmount {
    num amount = 0;
    for (var product in products) {
      amount += product.price;
    }
    return amount;
  }

  void remove(int index) {
    products.removeAt(index);
    update();
  }

  void buy() {
    var razorpayContrroller = RazorpayController();
    razorpayContrroller.pay(totalAmount, (PaymentSuccessResponse response) {
      products.clear();
      update();
      AppSnackBar.showSnackBar('Order placed');
    }, (PaymentFailureResponse response) {
      AppSnackBar.showSnackBar(response.message ?? '');
    }, (ExternalWalletResponse response) {
      AppSnackBar.showSnackBar(response.walletName ?? '');
    });
  }
}
