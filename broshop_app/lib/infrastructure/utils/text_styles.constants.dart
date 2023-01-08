import 'package:flutter/widgets.dart';

import 'index.dart';

class AppTextStyles {
  static const bold = TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 14,
      color: AppColors.black,
      fontFamily: AppFonts.robotoBold);
  static const regular = TextStyle(
      fontSize: 14,
      color: AppColors.black,
      fontWeight: FontWeight.w500,
      fontFamily: AppFonts.robotoRegular);
  static const extraBold = TextStyle(
      fontSize: 14, color: AppColors.black, fontFamily: AppFonts.robotoBold);
  static const medium = TextStyle(
      fontSize: 14,
      color: AppColors.black,
      fontWeight: FontWeight.w100,
      fontFamily: AppFonts.robotoMedium);
  static const italic =
      TextStyle(fontFamily: AppFonts.robotoItalic, color: AppColors.black);
}

class AppFonts {
  static const robotoRegular = 'RobotoRegular';
  static const robotoBold = 'RobotoBold';
  static const poppinsMedium = 'PoppinsMedium';
  static const robotoMedium = 'RobotoMedium';
  static const robotoItalic = 'RobotoItalic';
}
