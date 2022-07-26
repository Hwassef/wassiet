import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:wassiet/config/images/app_images.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Image.asset(AppImages.appIcon),
      actions: [
        Image.asset(AppImages.settingsIcon),
        Image.asset(AppImages.notificationsIcon),
      ],
    );
  }
}
