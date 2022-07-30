import 'package:flutter/material.dart';
import 'package:wassiet/config/config.dart';

class CustomLoader extends StatefulWidget {
  const CustomLoader({Key? key}) : super(key: key);

  @override
  State<CustomLoader> createState() => _CustomLoaderState();
}

class _CustomLoaderState extends State<CustomLoader> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Center(
          child: Image.asset(
            AppImages.appLogo,
            width: 84,
            height: 74,
          ),
        ),
        Center(
          child: Container(
            height: 120,
            width: 120,
            margin: const EdgeInsets.all(50),
            child: const CircularProgressIndicator(
              strokeWidth: 6.0,
              valueColor: AlwaysStoppedAnimation(AppColors.cyanColor),
            ),
          ),
        ),
      ],
    );
  }
}
