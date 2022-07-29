import 'package:flutter/material.dart';

class InputFormField extends StatelessWidget {
  const InputFormField({
    Key? key,
    required this.hintText,
    required this.controller,
    required this.keyboardType,
    // this.expands = false,
    this.maxLines = 1,
    this.minLines = 1,
    this.constraints,
    // required this.validator,
    // required this.onChanged,
    required this.label,
  }) : super(key: key);
  final String hintText;
  final TextEditingController controller;
  final TextInputType keyboardType;
  // final bool expands;
  final int maxLines;
  final int minLines;
  final BoxConstraints? constraints;
  // final String? Function(String?)? validator;
  // final void Function(String)? onChanged;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(label),
        ),
        TextFormField(
          decoration: InputDecoration(
            hintText: hintText,
            constraints: constraints,
          ),
          controller: controller,
          // validator: validator,
          // onChanged: onChanged,
          keyboardType: keyboardType,
          // expands: expands,
          maxLines: maxLines,
          minLines: minLines,
        ),
      ],
    );
  }
}
