import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wassiet/app/models/radio_button.dart';
import 'package:wassiet/config/config.dart';

class CustomDropDownButton extends StatelessWidget {
  final void Function()? onTap;
  final String label;
  final String content;
  CustomDropDownButton({
    this.onTap,
    Key? key,
    required this.content,
    required this.label,
  }) : super(key: key);
  final RadioButton radioButton = RadioButton();
  @override
  Widget build(BuildContext context) {
    final TextTheme theme = Theme.of(context).textTheme;
    return Observer(
      builder: (_) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              label,
              style: theme.subtitle1,
            ),
          ),
          SizedBox(
            height: 55.h,
            child: InputDecorator(
              decoration: const InputDecoration(
                hintMaxLines: 1,
                floatingLabelBehavior: FloatingLabelBehavior.never,
                fillColor: AppColors.greyColor,
                filled: true,
                enabledBorder: OutlineInputBorder(
                  borderRadius: AppConstants.largeBorderRadius,
                  borderSide: BorderSide.none,
                ),
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 18.0,
                  vertical: 18.0,
                ),
              ),
              child: GestureDetector(
                onTap: onTap,
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    isDense: false,
                    isExpanded: true,
                    icon: const Icon(
                      Icons.arrow_drop_down,
                    ),
                    items: const [],
                    onChanged: (newValue) {},
                    hint: Text(
                      content,
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        height: 1,
                        color: AppColors.inputHintTextColor,
                        fontFamily: 'Cairo',
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
