import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:wassiet/app/models/radio_button.dart';

class CustomRadioBtn extends StatefulWidget {
  const CustomRadioBtn({
    Key? key,
    required this.label,
    required this.selectedIndex,
  }) : super(key: key);
  final String label;
  final int selectedIndex;
  @override
  State<CustomRadioBtn> createState() => _CustomRadioBtnState();
}

class _CustomRadioBtnState extends State<CustomRadioBtn> {
  final RadioButton radioButtonBase = RadioButton();
  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => GestureDetector(
          // onTap: () => radioButtonBase.changeCurrentSelectedItem(selectedItem: widget.selectedIndex),
          // child: Container(
          //   width: 32.0,
          //   height: 32.0,
          //   padding: EdgeInsets.all(radioButtonBase.value == widget.selectedIndex ? 8.5 : 4.5),
          //   decoration: BoxDecoration(
          //     shape: BoxShape.circle,
          //     color: radioButtonBase.value == widget.selectedIndex
          //         ? AppColors.darkCyanColor
          //         : AppColors.inactiveGreyColorLight,
          //   ),
          //   child: Container(
          //     decoration: BoxDecoration(
          //       borderRadius: BorderRadius.circular(10.0),
          //       color: Colors.white,
          //     ),
          //   ),
          // ),
          ),
    );
  }
}
