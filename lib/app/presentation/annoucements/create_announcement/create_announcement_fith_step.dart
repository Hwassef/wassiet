import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wassiet/app/models/create_announcement_fith_step_vm.dart';
import 'package:wassiet/config/config.dart';

import 'package:wassiet/generated/l10n.dart';
import 'package:wassiet/widgets/add_announcement_picture.dart';

class CreateAnnouncementFithStep extends StatelessWidget {
  CreateAnnouncementFithStep({Key? key}) : super(key: key);
  final CreateAnnouncementFithStepVM createAnnouncementFirstStepVM = CreateAnnouncementFithStepVM();
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
          child: AddAnnouncementPicture(
            callBack: createAnnouncementFirstStepVM.addPicture,
          ),
        ),
        Observer(
          builder: (_) => ListView.builder(
              shrinkWrap: true,
              itemCount: createAnnouncementFirstStepVM.images.length,
              itemBuilder: (context, index) {
                File currentImage = createAnnouncementFirstStepVM.images[index];
                return ClipRRect(
                  borderRadius: AppConstants.largeBorderRadius,
                  child: Image.file(currentImage),
                );
              }),
        ),
      ],
    );
  }
}
