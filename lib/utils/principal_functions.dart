import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:wassiet/config/colors/app_colors.dart';
import 'package:wassiet/config/config.dart';
import 'package:wassiet/utils/enums.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

String getCountryFlag({required String countryCode}) => countryCode.toUpperCase().replaceAllMapped(
      RegExp(r'[A-Z]'),
      (match) => String.fromCharCode(
        match.group(0)!.codeUnitAt(0) + 127397,
      ),
    );
Color getBackgroundColorDependingOnSocialMedial({required SocialMedia socialMedia}) {
  switch (socialMedia) {
    case SocialMedia.facebook:
      return AppColors.deepBlueColor;
    case SocialMedia.twitter:
      return AppColors.darkCyanColor;
    case SocialMedia.instagram:
      return AppColors.darkPinkColor;
    case SocialMedia.whatsapp:
      return AppColors.lightGreenColor;

    default:
      return AppColors.transparentColor;
  }
}

showAlertDialog(BuildContext context) {
  // Create button
  Widget cancelButton = TextButton(
    child: const Text("Cancel"),
    onPressed: () => context.popRoute(),
  );
  Widget okButton = TextButton(
    child: const Text("open settings"),
    onPressed: () {
      openAppSettings();
      context.popRoute();
    },
  );

  // Create AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Open app settings"),
    actions: [
      okButton,
      cancelButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
