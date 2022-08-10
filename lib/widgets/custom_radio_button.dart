import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wassiet/app/models/radio_button.dart';
import 'package:wassiet/config/config.dart';

class CustomRadioBtn extends StatefulWidget {
  const CustomRadioBtn({
    Key? key,
    required this.label,
    required this.value,
    required this.onChanged,
  }) : super(key: key);
  final String label;
  final bool value;
  final ValueChanged<bool> onChanged;
  @override
  State<CustomRadioBtn> createState() => _CustomRadioBtnState();
}

enum CheckStatus {
  checked,
  unchecked,
}

class _CustomRadioBtnState extends State<CustomRadioBtn> {
  late bool _checked;
  late CheckStatus _status;

  final RadioButton radioButtonBase = RadioButton();
  @override
  void initState() {
    super.initState();
    _init();
  }

  void _init() {
    _checked = widget.value;
    if (_checked) {
      _status = CheckStatus.checked;
    } else {
      _status = CheckStatus.unchecked;
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => widget.onChanged(!_checked),
      child: Row(
        children: [
          Container(
            width: 32.0,
            height: 32.0,
            padding: EdgeInsets.all(widget.value ? 8.5 : 4.5),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: widget.value ? AppColors.darkCyanColor : AppColors.inactiveGreyColorLight,
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.white,
              ),
            ),
          ),
          8.w.horizontalSpace,
          Text(
            widget.label,
            style: Theme.of(context).textTheme.headline2,
          )
        ],
      ),
    );
  }
}
