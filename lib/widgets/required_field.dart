import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wassiet/generated/l10n.dart';

class RequriedField extends StatefulWidget {
  const RequriedField({Key? key}) : super(key: key);

  @override
  State<RequriedField> createState() => _RequriedFieldState();
}

class _RequriedFieldState extends State<RequriedField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(S.current.requiredField),
        ],
      ),
    );
  }
}
