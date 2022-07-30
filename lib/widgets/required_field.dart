import 'package:flutter/material.dart';
import 'package:wassiet/generated/l10n.dart';

class RequriedField extends StatefulWidget {
  const RequriedField({Key? key}) : super(key: key);

  @override
  State<RequriedField> createState() => _RequriedFieldState();
}

class _RequriedFieldState extends State<RequriedField> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(S.current.requiredField),
      ],
    );
  }
}
