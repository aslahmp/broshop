import 'package:razorpay_flutter/razorpay_flutter.dart';

class RazorpayController {
  final _razorpay = Razorpay();
  void pay(
      num amount,
      // String name,
      // String discription,
      // String mobileNumber,
      // String email,
      Function handlePaymentSuccess,
      Function handlePaymentError,
      Function handleExternalWallet) {
    var options = {
      'key': 'rzp_test_rnnwwYWii5wF8T',
      'amount': amount * 100,
    };
    _razorpay.open(options);
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, handlePaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, handleExternalWallet);
  }
}
