import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppSnackBar {
  static void showSnackBar(String text) {
    Get.showSnackbar(GetSnackBar(
      messageText: Text(
        text,
        style: const TextStyle(color: Colors.white),
      ),
      duration: const Duration(seconds: 2),
    ));
  }
}
