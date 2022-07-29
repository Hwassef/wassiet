import 'package:flutter/material.dart';
import 'package:wassiet/config/colors/app_colors.dart';
import 'package:wassiet/config/config.dart';
import 'package:wassiet/utils/enums.dart';
import 'package:wassiet/utils/principal_functions.dart';

class CustomCircleAvtar extends StatelessWidget {
  const CustomCircleAvtar({
    Key? key,
    required this.socialMedia,
    required this.image,
  }) : super(key: key);
  final SocialMedia socialMedia;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: AppColors.inactiveGreyColorLight,
            offset: Offset(0, 0),
            blurRadius: 20,
          ),
        ],
      ),
      child: CircleAvatar(
        backgroundColor: getBackgroundColorDependingOnSocialMedial(socialMedia: socialMedia),
        radius: 30,
        child: ClipRRect(
          child: Image.asset(
            image,
            width: 30,
            height: 30,
            fit: BoxFit.fitHeight,
          ),
        ),
      ),
    );
  }
}
