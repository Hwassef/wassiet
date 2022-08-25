import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wassiet/config/config.dart';
import 'package:wassiet/generated/l10n.dart';
import 'package:wassiet/widgets/custom_back_button.dart';

class AnnouncementDetailsPage extends StatefulWidget {
  const AnnouncementDetailsPage({Key? key}) : super(key: key);

  @override
  State<AnnouncementDetailsPage> createState() => _AnnouncementDetailsPageState();
}

class _AnnouncementDetailsPageState extends State<AnnouncementDetailsPage> with SingleTickerProviderStateMixin {
  TabController? _controller;
  int selectedIndex = 0;
  @override
  void initState() {
    _controller = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _controller?.addListener(() {
      if (_controller?.indexIsChanging ?? false) {
        setState(() {
          selectedIndex = _controller?.index ?? 0;
        });
      }
    });
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Row(
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
                      25.w.horizontalSpace,
                      Image.asset(
                        AppImages.outlinedHeartIcon,
                        width: 24,
                        height: 21,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 220,
              child: ListView.builder(
                padding: EdgeInsets.zero,
                physics: const PageScrollPhysics(),
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemExtent: MediaQuery.of(context).size.width,
                itemCount: 5,
                itemBuilder: (context, index) => Container(
                  child: Image.asset(
                    AppImages.galleryIcon,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16.0),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF00B4EF),
                    Color(0xFFC7B8A3),
                  ],
                ),
                borderRadius: AppConstants.extraLargeBorderRadius,
              ),
              child: TabBar(
                controller: _controller,
                tabs: [
                  Tab(
                    text: S.current.details,
                  ),
                  Tab(
                    height: 73,
                    text: S.current.ratingAndComments,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 80.0,
              child: TabBarView(
                controller: _controller,
                children: <Widget>[
                  const Card(
                    child: ListTile(
                      leading: Icon(Icons.home),
                      title: TextField(
                        decoration: InputDecoration(hintText: 'Search for address...'),
                      ),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: const Icon(Icons.location_on),
                      title: Text('Latitude: 48.09342\nLongitude: 11.23403'),
                      trailing: IconButton(icon: const Icon(Icons.my_location), onPressed: () {}),
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
