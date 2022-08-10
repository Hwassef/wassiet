import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wassiet/app/domain/entities/announcement.dart';
import 'package:wassiet/app/domain/entities/category.dart';
import 'package:wassiet/app/models/home_page.dart';
import 'package:wassiet/app/presentation/home/build_announcement_card.dart';
import 'package:wassiet/app/presentation/home/build_announcements_shimmer.dart';
import 'package:wassiet/config/config.dart';
import 'package:wassiet/config/routes/app_router.gr.dart';
import 'package:wassiet/generated/l10n.dart';
import 'package:wassiet/widgets/filter_modal_sheet.dart';
import 'package:wassiet/widgets/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController searchTextEditingController = TextEditingController();

  final FocusNode searchFocusNode = FocusNode();

  final HomePageVM _homePage = HomePageVM();
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      _homePage.isLoading = true;
      await _homePage.getAllCategories();
      await _homePage.getAllAnnouncements();
      _homePage.isLoading = false;
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: CustomAppBar(),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(
                    24.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: InputTextField(
                          controller: searchTextEditingController,
                          keyboardType: TextInputType.name,
                          focusNode: searchFocusNode,
                          hintText: S.current.searchForSomething,
                          isRequired: false,
                          prefixIcon: Image.asset(
                            AppImages.searchIcon,
                            width: 20,
                            height: 20,
                          ),
                        ),
                      ),
                      16.w.horizontalSpace,
                      GestureDetector(
                        onTap: () => showModalBottomSheet(
                          enableDrag: true,
                          isScrollControlled: true,
                          backgroundColor: AppColors.whiteColor,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                              top: AppConstants.extraLargeRadius,
                            ),
                          ),
                          isDismissible: true,
                          context: context,
                          builder: (_) => const FilterModalBottomSheet(),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 17.0, horizontal: 15),
                          child: Image.asset(
                            AppImages.filterIcon,
                            width: 24.0,
                            height: 21.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 55,
                  child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: _homePage.categories.length,
                      itemBuilder: (context, index) {
                        final Category currentCategory = _homePage.categories[index];
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Chip(
                            backgroundColor: AppColors.cyanColor,
                            labelStyle: Theme.of(context)
                                .textTheme
                                .button
                                ?.copyWith(fontSize: 14.sp, fontWeight: FontWeight.w700),
                            label: Text(currentCategory.categoryName),
                            labelPadding: const EdgeInsets.symmetric(horizontal: 28, vertical: 15),
                          ),
                        );
                      }),
                ),
              ],
            ),
            12.h.verticalSpace,
            Expanded(
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: _homePage.announcements.length,
                itemBuilder: (context, index) {
                  if (_homePage.isLoading) {
                    return const BuildAnnouncementsShimmer();
                  } else {
                    final Announcement currentAnnouncement = _homePage.announcements[index];
                    return BuildAnnouncementCard(currentAnnouncement: currentAnnouncement);
                  }
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }
}
