import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wassiet/config/config.dart';
import 'package:wassiet/generated/l10n.dart';

Widget buildAnnouncementDetailsTabBarContent(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 25.0),
    child: Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          15.h.verticalSpace,
          Text(
            '1 150,000',
            style: Theme.of(context).textTheme.headline1?.copyWith(fontSize: 20),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(6.0),
                decoration: const BoxDecoration(
                  borderRadius: AppConstants.extraLargeBorderRadius,
                  color: AppColors.cyanColor,
                ),
                child: Text(S.current.rent),
              ),
              Wrap(
                children: [
                  const Text('Announcement number : 19'),
                  16.w.horizontalSpace,
                  Image.asset(
                    AppImages.clockIcon,
                    width: 15,
                    height: 15,
                  ),
                  8.w.horizontalSpace,
                  const Text('2021-07-20'),
                ],
              ),
            ],
          ),
          12.h.verticalSpace,
          Text(
            'فيلا للبيع في مكة المكرمة',
            style: Theme.of(context).textTheme.headline1?.copyWith(color: AppColors.blackColor),
          ),
          12.h.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                AppImages.filledStarIcon,
                width: 16,
                height: 16,
              ),
              6.w.horizontalSpace,
              const Text('4.5 '),
              6.w.horizontalSpace,
              const Text('(12)'),
            ],
          ),
          13.h.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                AppImages.pinIcon,
                width: 14,
                height: 14,
              ),
              8.w.horizontalSpace,
              const Text(
                'محافظة البكيرية - السعودية',
              )
            ],
          ),
          12.h.verticalSpace,
          Text(
            S.current.technicalCard,
            style: Theme.of(context).textTheme.headline4?.copyWith(
                  color: AppColors.blackColor,
                ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Table(
              border: TableBorder.symmetric(
                outside: BorderSide.none,
              ),
              children: [
                TableRow(
                  decoration: const BoxDecoration(
                    color: AppColors.cyanColor,
                    borderRadius: AppConstants.largeBorderRadius,
                  ),
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(12.0),
                      child: TableCell(
                        child: Text('نوع العقار'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: TableCell(
                        child: Text('فيلا دوبلكس',
                            style: Theme.of(context).textTheme.headline4?.copyWith(color: AppColors.blackColor)),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  decoration: const BoxDecoration(
                    // color: AppColors.cyanColor,
                    borderRadius: AppConstants.largeBorderRadius,
                  ),
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(12.0),
                      child: TableCell(
                        child: Text('المساحة'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: TableCell(
                        child: Text(' م² 250',
                            style: Theme.of(context).textTheme.headline4?.copyWith(color: AppColors.blackColor)),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  decoration: const BoxDecoration(
                    color: AppColors.cyanColor,
                    borderRadius: AppConstants.largeBorderRadius,
                  ),
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(12.0),
                      child: TableCell(
                        child: Text('سعر المتر المربع'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: TableCell(
                        child: Text(' ريال 1500',
                            style: Theme.of(context).textTheme.headline4?.copyWith(color: AppColors.blackColor)),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  decoration: const BoxDecoration(
                    // color: AppColors.cyanColor,
                    borderRadius: AppConstants.largeBorderRadius,
                  ),
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(12.0),
                      child: TableCell(
                        child: Text('عدد الغرف'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: TableCell(
                        child: Text('5',
                            style: Theme.of(context).textTheme.headline4?.copyWith(color: AppColors.blackColor)),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  decoration: const BoxDecoration(
                    color: AppColors.cyanColor,
                    borderRadius: AppConstants.largeBorderRadius,
                  ),
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(12.0),
                      child: TableCell(
                        child: Text('الحمامات'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: TableCell(
                        child: Text('2',
                            style: Theme.of(context).textTheme.headline4?.copyWith(color: AppColors.blackColor)),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  decoration: const BoxDecoration(
                    // color: AppColors.cyanColor,
                    borderRadius: AppConstants.largeBorderRadius,
                  ),
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(12.0),
                      child: TableCell(
                        child: Text('عدد الصالات'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: TableCell(
                        child: Text('2',
                            style: Theme.of(context).textTheme.headline4?.copyWith(color: AppColors.blackColor)),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  decoration: const BoxDecoration(
                    color: AppColors.cyanColor,
                    borderRadius: AppConstants.largeBorderRadius,
                  ),
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(12.0),
                      child: TableCell(
                        child: Text('عمر العقار'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: TableCell(
                        child: Text(
                          '3 (س)',
                          style: Theme.of(context).textTheme.headline4?.copyWith(
                                color: AppColors.blackColor,
                              ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
