import 'package:flutter/material.dart';
import 'package:wassiet/config/colors/app_colors.dart';
import 'package:wassiet/config/config.dart';
import 'package:wassiet/utils/enums.dart';

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
