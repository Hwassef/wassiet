import 'package:flutter/material.dart';
import 'package:wassiet/config/config.dart';
import 'package:wassiet/generated/l10n.dart';
import 'package:wassiet/widgets/custom_back_button.dart';

class AnnouncementDetailsPage extends StatelessWidget {
  const AnnouncementDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CustomBackButton(),
                Wrap(
                  children: [
                    Image.asset(
                      AppImages.shareIcon,
                      width: 21,
                      height: 24,
                    ),
                    Image.asset(
                      AppImages.outlinedHeartIcon,
                      width: 24,
                      height: 21,
                    ),
                  ],
                ),
              ],
            ),

            /// Images Slider goes here
            const SizedBox(
              height: 21.0,
            ),
            Container(
              decoration: const BoxDecoration(
                gradient: AppColors.blueMaroonGradient,
              ),
              child: TabBar(
                tabs: [
                  Tab(
                    child: Container(
                      decoration: const BoxDecoration(
                        color: AppColors.whiteColor,
                        borderRadius: AppConstants.largeBorderRadius,
                      ),
                      child: Text(S.current.details),
                    ),
                  ),
                  Tab(
                    child: Container(
                      child: Text(S.current.ratingAndComments),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
