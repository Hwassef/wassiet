import 'package:flutter/material.dart';
import 'package:wassiet/config/colors/app_colors.dart';
import 'package:wassiet/config/constants/app_constants.dart';

/// This class allows for global overrides of material InputDecorationTheme
class AppInputDecorationTheme {
  AppInputDecorationTheme._();
  static InputDecorationTheme inputDecorationTheme = const InputDecorationTheme(
    floatingLabelBehavior: FloatingLabelBehavior.never,
    errorMaxLines: 3,
    fillColor: Colors.white,
    filled: true,
    errorStyle: TextStyle(
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w500,
      color: AppColors.lightRedColor,
      fontSize: 12,
    ),
    isDense: true,
    disabledBorder: OutlineInputBorder(
      borderRadius: AppConstants.largeBorderRadius,
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: AppColors.cyanColor,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: AppColors.cyanColor,
      ),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: AppColors.lightRedColor,
      ),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: AppColors.lightRedColor,
      ),
    ),
    contentPadding: EdgeInsets.symmetric(
      vertical: 16,
      horizontal: 17,
    ),
  );
}
