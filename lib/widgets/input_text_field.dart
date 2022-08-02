import 'package:flutter/material.dart';
import 'package:wassiet/config/config.dart';

class InputTextField extends StatelessWidget {
  const InputTextField({
    Key? key,
    this.hintText,
    required this.controller,
    required this.keyboardType,
    // this.expands = false,
    this.maxLines = 1,
    this.minLines = 1,
    this.constraints,
    this.suffixIcon,
    this.prefixIcon,
    this.prefixIconConstraints,
    this.validator,
    this.onChanged,
    this.autoValidateMode,
    required this.label,
    required this.focusNode,
  }) : super(key: key);
  final String? hintText;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final BoxConstraints? prefixIconConstraints;
  // final bool expands;
  final int maxLines;
  final int minLines;
  final BoxConstraints? constraints;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final String label;
  final AutovalidateMode? autoValidateMode;
  final FocusNode focusNode;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            label,
            style: Theme.of(context).textTheme.subtitle1,
          ),
        ),
        TextFormField(
          cursorHeight: 1.2,
          cursorColor: AppColors.darkGreyColor,
          decoration: InputDecoration(
            fillColor: focusNode.hasFocus ? AppColors.whiteColor : AppColors.greyColor,
            filled: true,
            hintText: hintText,
            constraints: constraints,
            suffixIcon: suffixIcon,
            prefixIcon: Padding(
              padding: EdgeInsets.symmetric(horizontal: prefixIcon != null ? 21.0 : 8.0),
              child: prefixIcon,
            ),
            prefixIconConstraints: prefixIconConstraints,
          ),
          controller: controller,
          validator: validator,
          onChanged: onChanged,
          keyboardType: keyboardType,
          autovalidateMode: autoValidateMode,
          focusNode: focusNode,
          // expands: expands,
          maxLines: maxLines,
          minLines: minLines,
        ),
      ],
    );
  }
}
