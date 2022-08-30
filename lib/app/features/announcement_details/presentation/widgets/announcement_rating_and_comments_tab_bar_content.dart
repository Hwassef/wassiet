import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wassiet/app/features/announcement_details/presentation/widgets/add_comment_modal_bottom_sheet.dart';
import 'package:wassiet/config/config.dart';
import 'package:wassiet/generated/l10n.dart';
import 'package:wassiet/widgets/widgets.dart';

Widget buildAnnouncementRatingAndComments(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 25.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 120,
              width: 120,
              decoration: const BoxDecoration(
                color: AppColors.cyanColor,
                borderRadius: AppConstants.extraLargeBorderRadius,
              ),
            ),
            const Expanded(
              child: SizedBox.shrink(),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('4.5 من 5 '),
            8.h.verticalSpace,
            const Text('(252 إجمالي)'),
          ],
        ),
        OutlinedButton(
          onPressed: () => customModalBottomSheet(
            context: context,
            modalBottomSheet: const AddCommentModalBottomSheet(),
          ),
          child: Text(S.current.addComment),
        ),
      ],
    ),
  );
}
