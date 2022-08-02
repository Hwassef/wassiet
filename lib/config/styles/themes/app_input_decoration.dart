import 'package:flutter/material.dart';
import 'package:wassiet/config/config.dart';

class AppInputDecorationTheme {
  AppInputDecorationTheme._();
  static InputDecorationTheme inputDecorationTheme = const InputDecorationTheme(
    floatingLabelBehavior: FloatingLabelBehavior.never,
    errorMaxLines: 3,
    fillColor: AppColors.greyColor,
    filled: true,
    errorStyle: TextStyle(
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w500,
      color: AppColors.lightRedColor,
      fontSize: 12,
    ),
    hintStyle: TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 14,
      height: 1,
      color: AppColors.inputHintTextColor,
      fontFamily: 'Cairo',
    ),
    isDense: true,
    enabledBorder: OutlineInputBorder(
      borderRadius: AppConstants.largeBorderRadius,
      borderSide: BorderSide.none,
    ),
    focusColor: AppColors.whiteColor,
    focusedBorder: OutlineInputBorder(
      borderRadius: AppConstants.largeBorderRadius,
      borderSide: BorderSide(
        color: AppColors.cyanColor,
        width: 2.0,
      ),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: AppConstants.largeBorderRadius,
      borderSide: BorderSide.none,
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: AppConstants.largeBorderRadius,
      borderSide: BorderSide.none,
    ),
    contentPadding: EdgeInsets.symmetric(
      vertical: 22,
      horizontal: 0,
    ),
  );
}
