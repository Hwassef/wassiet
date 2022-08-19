import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:wassiet/app/presentation/annoucements/create_announcement/create_announcement_fith_step.dart';
import 'package:wassiet/app/presentation/annoucements/create_announcement/create_announcement_fourth_step.dart';
import 'package:wassiet/app/presentation/annoucements/create_announcement/create_announcement_second_step.dart';
import 'package:wassiet/config/colors/app_colors.dart';
import 'package:wassiet/config/config.dart';
import 'package:wassiet/utils/enums.dart';

import '../app/presentation/annoucements/create_announcement/create_announcement_first_step.dart';
import '../app/presentation/annoucements/create_announcement/create_announcement_third_step.dart';

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
    title: const Text("Open app settings"),
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

enum CurrentStep { first, second, third, fourth, fith }

Widget currentFormForCurrentIndex({required int currentStep}) {
  switch (currentStep) {
    case 0:
      return const CreateAnnouncementFirstStep();
    case 1:
      return CreateAnnouncementSecondStep();
    case 2:
      return CreateAnnouncementThirdStep();
    case 3:
      return CreateAnnouncementFourthStep();
    case 4:
      return CreateAnnouncementFithStep();
    default:
      return const SizedBox.shrink();
  }
}
