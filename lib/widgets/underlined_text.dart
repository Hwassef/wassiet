import 'package:flutter/material.dart';
import 'package:wassiet/config/config.dart';

class UnderlinedText extends StatelessWidget {
  const UnderlinedText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Image.asset(
          AppImages.blueLineImage,
          width: 33.0,
        ),
      ],
    );
  }
}
