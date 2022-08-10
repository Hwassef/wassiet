import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wassiet/config/config.dart';
import 'package:wassiet/generated/l10n.dart';

class CreateAnnouncementFithStep extends StatelessWidget {
  const CreateAnnouncementFithStep({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Text(
                S.current.addPropertyPictures,
                style: Theme.of(context).textTheme.subtitle2?.copyWith(fontSize: 14),
              ),
            ),
          ],
        ),
        16.h.verticalSpace,
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Text(
                S.current.sevenImagesAllowedByMaximum,
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 144,
                width: 175,
                decoration: BoxDecoration(
                  color: AppColors.cyanColor.withOpacity(0.9),
                  borderRadius: AppConstants.largeBorderRadius,
                ),
              ),
              Image.asset(
                AppImages.addIcon,
                width: 30,
                height: 30,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
