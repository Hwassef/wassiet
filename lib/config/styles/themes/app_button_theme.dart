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
              colors: [Colors.blueAccent, Colors.redAccent, Colors.purpleAccent],
            ),
          ),
        );
      }
      const DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blueAccent, Colors.redAccent, Colors.purpleAccent],
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
  /* OutlinedButton */
  static final OutlinedButtonThemeData outlinedButtonThemeDataLight = OutlinedButtonThemeData(
    style: _outlinedButtonStyle,
  );

  static final ButtonStyle _outlinedButtonStyle = ButtonStyle(
    fixedSize: MaterialStateProperty.resolveWith<Size>(
      (Set<MaterialState> states) => const Size(
        double.maxFinite,
        55,
      ),
    ),
    backgroundColor: MaterialStateProperty.resolveWith<Color>(
      (states) => AppColors.whiteColor,
    ),
    elevation: MaterialStateProperty.resolveWith<double>(
      (Set<MaterialState> states) => 0.0,
    ),
    shape: MaterialStateProperty.resolveWith<OutlinedBorder>(
      (states) => const RoundedRectangleBorder(
        borderRadius: AppConstants.mediumBorderRadius,
      ),
    ),
    side: MaterialStateProperty.resolveWith<BorderSide>(
      (states) {
        if (states.contains(MaterialState.disabled)) {
          return const BorderSide(
            width: 2,
            color: AppColors.inactiveGreyColorLight,
          );
        } else {
          return const BorderSide(
            width: 2,
            color: AppColors.darkBlueColor,
          );
        }
      },
    ),
    textStyle: MaterialStateProperty.resolveWith<TextStyle>((states) {
      if (states.contains(MaterialState.disabled)) {
        return const TextStyle(
          fontFamily: 'Poppins',
          color: AppColors.inactiveGreyColorLight,
          fontWeight: FontWeight.w500,
          fontSize: 14,
        );
      }
      return const TextStyle(
        fontFamily: 'Poppins',
        color: AppColors.darkBlueColor,
        fontWeight: FontWeight.w500,
        fontSize: 14,
      );
    }),
  );
}
