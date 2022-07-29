import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:wassiet/app/presentation/app_settings/about_app_page.dart';
import 'package:wassiet/app/presentation/app_settings/change_app_language_page.dart';
import 'package:wassiet/app/presentation/app_settings/contact_us_page.dart';
import 'package:wassiet/app/presentation/app_settings/settings_page.dart';
import 'package:wassiet/app/presentation/app_settings/using_terms_page.dart';
import 'package:wassiet/app/presentation/home_page.dart';

@AdaptiveAutoRouter(
  routes: <AutoRoute>[
    CustomRoute(
      path: '/homePage',
      page: HomePage,
      transitionsBuilder: TransitionsBuilders.slideLeft,
      durationInMilliseconds: 400,
    ),
    CustomRoute(
      path: '/settingsPage',
      page: SettingsPage,
      initial: true,
      transitionsBuilder: TransitionsBuilders.slideLeft,
      durationInMilliseconds: 400,
    ),
    CustomRoute(
      path: '/changeAppLanguagePage',
      page: ChangeAppLanguagePage,
      transitionsBuilder: TransitionsBuilders.slideLeft,
      durationInMilliseconds: 400,
    ),
    CustomRoute(
      path: '/contactUsPage',
      page: ContactUsPage,
      transitionsBuilder: TransitionsBuilders.slideLeft,
      durationInMilliseconds: 400,
    ),
    CustomRoute(
      path: '/usingTermsPage',
      page: UsingTermsPage,
      transitionsBuilder: TransitionsBuilders.slideLeft,
      durationInMilliseconds: 400,
    ),
    CustomRoute(
      path: '/aboutAppPage',
      page: AboutAppPage,
      transitionsBuilder: TransitionsBuilders.slideLeft,
      durationInMilliseconds: 400,
    ),
  ],
)
class $AppRouter {}
