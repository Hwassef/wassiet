import 'package:flutter/material.dart';
import 'package:wassiet/config/config.dart';

class CustomRadioBtn extends StatefulWidget {
  const CustomRadioBtn({Key? key}) : super(key: key);

  @override
  State<CustomRadioBtn> createState() => _CustomRadioBtnState();
}

class _CustomRadioBtnState extends State<CustomRadioBtn> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {});
      },
      child: Container(
        width: 32.0,
        height: 32.0,
        padding: EdgeInsets.all(selectedIndex == 0 ? 8.5 : 4.5),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: selectedIndex == 0 ? AppColors.darkCyanColor : AppColors.inactiveGreyColorLight,
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
