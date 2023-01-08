import 'package:flutter/material.dart';

import '../index.dart';

class AppInputDecoration {
  static var defalt = InputDecoration(
    // isCollapsed: true,
    filled: true,
    fillColor: AppColors.white,
    hintText: '',

    hintStyle: AppTextStyles.bold
        .copyWith(color: AppColors.black.withOpacity(.6), fontSize: 13),
    border: border(),

    contentPadding:
        const EdgeInsets.only(left: 14.0, right: 14, bottom: 8.0, top: 8.0),
    focusedBorder: border(),
    enabledBorder: border(),

    errorBorder: border(),

    focusedErrorBorder: border(),
    disabledBorder: border(),
  );
  static OutlineInputBorder border() {
    return OutlineInputBorder(
      borderSide: const BorderSide(color: AppColors.blue),
      borderRadius: BorderRadius.circular(10),
    );
  }
}
