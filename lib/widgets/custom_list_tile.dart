import 'package:flutter/material.dart';
import 'package:wassiet/config/config.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    Key? key,
    required this.onTap,
    required this.content,
  }) : super(key: key);
  final void Function()? onTap;
  final String content;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: 65,
        child: Card(
          shape: const RoundedRectangleBorder(
            borderRadius: AppConstants.largeBorderRadius,
          ),
          elevation: 0.0,
          color: AppColors.lightPrimaryColor,
          child: ListTile(
            contentPadding: EdgeInsets.zero,
            title: Padding(
              padding: const EdgeInsets.only(left: AppSizes.size24),
              child: Text(
                content,
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
            trailing: Padding(
              padding: const EdgeInsets.only(right: AppSizes.size24),
              child: Image.asset(
                AppImages.arrowIcon,
                width: AppSizes.size12,
                height: AppSizes.size18,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
