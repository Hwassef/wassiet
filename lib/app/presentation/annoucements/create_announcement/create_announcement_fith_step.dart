import 'package:flutter/material.dart';
import 'package:wassiet/config/config.dart';
import 'package:wassiet/generated/l10n.dart';

class CreateAnnouncementFithStep extends StatelessWidget {
  const CreateAnnouncementFithStep({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              S.current.addPropertyPictures,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              S.current.sevenImagesAllowedByMaximum,
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Row(
            children: [
              Container(
                height: 144,
                width: 175,
                decoration: const BoxDecoration(
                  color: AppColors.cyanColor,
                  borderRadius: AppConstants.largeBorderRadius,
                ),
                child: Image.asset(AppImages.addIcon),
              )
            ],
          ),
        ),
      ],
    );
  }
}
