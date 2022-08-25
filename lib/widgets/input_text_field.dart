import 'package:flutter/material.dart';
import 'package:wassiet/config/config.dart';
import 'package:wassiet/widgets/required_field.dart';

class InputTextField extends StatelessWidget {
  InputTextField({
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
    this.isRequired = true,
    this.label,
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
  final String? label;
  final AutovalidateMode? autoValidateMode;
  final FocusNode focusNode;
  bool isRequired;
  @override
  Widget build(BuildContext context) {
    final TextTheme theme = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        label != null
            ? Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  isRequired ? '*${label!}' : label!,
                  style: theme.subtitle1,
                ),
              )
            : const SizedBox.shrink(),
        TextFormField(
          cursorColor: AppColors.darkGreyColor,
          decoration: InputDecoration(
            fillColor: focusNode.hasFocus ? AppColors.whiteColor : AppColors.greyColor,
            filled: true,
            hintText: hintText,
            // constraints: constraints,
            // suffixIcon: suffixIcon,
            prefixIcon: prefixIcon != null
                ? Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 21.0),
                    child: prefixIcon,
                  )
                : null,
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
        isRequired ? const RequriedField() : const SizedBox.shrink(),
      ],
    );
  }
}
