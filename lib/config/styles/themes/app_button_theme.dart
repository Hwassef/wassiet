import 'package:flutter/material.dart';
import 'package:wassiet/config/colors/app_colors.dart';
import 'package:wassiet/config/constants/app_constants.dart';

class AppButtonTheme {
  AppButtonTheme._();

  /* ElevatedButton */
  static final ElevatedButtonThemeData elevatedButtonThemeDataLight = ElevatedButtonThemeData(
    style: _buttonStyle,
  );
  static final ButtonStyle _buttonStyle = ButtonStyle(
    fixedSize: MaterialStateProperty.resolveWith<Size>(
      (Set<MaterialState> states) => const Size(
        double.maxFinite,
        55.0,
      ),
    ),
    backgroundColor: MaterialStateProperty.resolveWith<Color>((states) {
      if (states.contains(MaterialState.disabled)) {
        const DecoratedBox(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.blueAccent,
                Colors.redAccent,
                Colors.purpleAccent
                //add more colors
              ],
            ),
          ),
        );
      }
      const DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.blueAccent,
              Colors.redAccent,
              Colors.purpleAccent
              //add more colors
            ],
          ),
        ),
      );
      return AppColors.transparentColor;
    }),
    textStyle: MaterialStateProperty.resolveWith<TextStyle>((states) {
      return const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 14,
        height: 1,
        color: AppColors.whiteColor,
        fontFamily: 'Cairo',
      );
    }),
    elevation: MaterialStateProperty.resolveWith<double>(
      (Set<MaterialState> states) => 2,
    ),
    shape: MaterialStateProperty.resolveWith<OutlinedBorder>(
      (states) => const RoundedRectangleBorder(
        borderRadius: AppConstants.smallBorderRadius,
      ),
    ),
  );
}
