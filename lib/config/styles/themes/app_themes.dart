import 'package:flutter/material.dart';
import 'package:wassiet/config/config.dart';

class AppThemes {
  AppThemes._();

  static ThemeData defaultAppTheme = ThemeData(
    primaryColor: AppColors.darkBlueColor,
    appBarTheme: const AppBarTheme(color: Colors.blue),
    bottomAppBarColor: Colors.red,
    backgroundColor: Colors.white,
    scaffoldBackgroundColor: Colors.white,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    iconTheme: const IconThemeData(),
    splashColor: Colors.white,
    textTheme: AppTextTheme.textThemeLight,
    disabledColor: AppColors.inactiveGreyColorLight,
    elevatedButtonTheme: AppButtonTheme.elevatedButtonThemeDataLight,
    outlinedButtonTheme: AppButtonTheme.outlinedButtonThemeDataLight,
    inputDecorationTheme: AppInputDecorationTheme.inputDecorationTheme,
  );
}
