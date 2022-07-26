import 'package:flutter/material.dart';
import 'package:wassiet/config/config.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Padding(
        padding: AppPaddings.leftLargePadding,
        child: Image.asset(
          AppImages.appIcon,
          width: AppSizes.size76,
          height: AppSizes.size50,
        ),
      ),
      leadingWidth: AppSizes.size76,
      actions: [
        Padding(
          padding: AppPaddings.rightLargePadding,
          child: GestureDetector(
            onTap: () {},
            child: Image.asset(
              AppImages.settingsIcon,
              width: AppSizes.size30,
              height: AppSizes.size30,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            right: 32.0,
          ),
          child: GestureDetector(
            onTap: () {},
            child: Image.asset(
              AppImages.notificationsIcon,
              width: AppSizes.size24,
              height: AppSizes.size28,
            ),
          ),
        ),
      ],
    );
  }
}
