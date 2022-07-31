import 'package:flutter/material.dart';
import 'package:wassiet/config/config.dart';

class GradientElevatedButton extends StatelessWidget {
  const GradientElevatedButton({
    Key? key,
    required this.onPressed,
    required this.child,
    required this.isButtonEnabled,
  }) : super(key: key);
  final void Function()? onPressed;
  final Widget child;
  final bool isButtonEnabled;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient:
            isButtonEnabled ? AppColors.elevatedButtonGradientColor : AppColors.disabledElevatedButtonGradientColor,
        borderRadius: AppConstants.largeBorderRadius,
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          elevation: 0.0,
          splashFactory: NoSplash.splashFactory,
          shadowColor: AppColors.transparentColor,
        ),
        child: child,
      ),
    );
  }
}
