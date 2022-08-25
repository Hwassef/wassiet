import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wassiet/app/features/home_page/domain/entities/announcement.dart';
import 'package:wassiet/config/config.dart';

class BuildAnnouncementCard extends StatelessWidget {
  const BuildAnnouncementCard({
    Key? key,
    required this.currentAnnouncement,
  }) : super(key: key);
  final Announcement currentAnnouncement;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24.0),
      child: Card(
        elevation: 0.0,
        child: Row(
          children: <Widget>[
            Flexible(
              flex: 3,
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  ClipRRect(
                    borderRadius: AppConstants.largeBorderRadius,
                    child: SizedBox.fromSize(
                      size: const Size.fromRadius(70), // Image radius
                      child: Image.network(
                        currentAnnouncement.announcmentImage,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: 10,
                      right: 10,
                    ),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                        currentAnnouncement.announcementPostedByUserImage,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            14.w.horizontalSpace,
            Flexible(
              flex: 5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Wrap(
                        alignment: WrapAlignment.start,
                        children: [
                          Chip(
                            padding: EdgeInsets.zero,
                            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            label: Text(currentAnnouncement.announcementType),
                            labelStyle: Theme.of(context).textTheme.button?.copyWith(fontSize: 12.sp),
                            labelPadding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 2.0),
                            backgroundColor: AppColors.cyanColor,
                          ),
                          8.w.horizontalSpace,
                          Image.asset(
                            AppImages.outlinedHeartIcon,
                            width: 28,
                            height: 28,
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Wrap(
                          alignment: WrapAlignment.center,
                          children: [
                            Text(
                              '(${currentAnnouncement.announcementNumberOfRates}) ',
                              style: Theme.of(context).textTheme.headline2?.copyWith(fontFamily: 'Roboto'),
                            ),
                            Text(
                              currentAnnouncement.announcementRate.toString(),
                              style: Theme.of(context).textTheme.headline2?.copyWith(
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w700,
                                  ),
                            ),
                            Image.asset(
                              AppImages.filledStarIcon,
                              width: 16,
                              height: 15,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  12.h.verticalSpace,
                  Row(
                    children: [
                      Text(
                        currentAnnouncement.announcementName,
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                    ],
                  ),
                  12.h.verticalSpace,
                  Row(
                    children: [
                      Text(currentAnnouncement.announcementPostedAt),
                    ],
                  ),
                  12.h.verticalSpace,
                  Row(
                    children: [
                      Text(
                        currentAnnouncement.announcementDescription,
                        style: Theme.of(context).textTheme.headline2,
                      ),
                    ],
                  ),
                  12.h.verticalSpace,
                  Row(
                    children: [
                      Text(
                        '${currentAnnouncement.announcementPrice} ${currentAnnouncement.announcementPriceUnit}',
                        style: Theme.of(context).textTheme.headline1?.copyWith(
                              fontSize: 16.sp,
                            ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
