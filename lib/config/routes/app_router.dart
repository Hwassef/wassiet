import 'package:auto_route/auto_route.dart';
import 'package:wassiet/app/presentation/custom_loader/custom_loader.dart';
import 'package:wassiet/app/presentation/pages.dart';

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
    CustomRoute(
      path: '/profilePage',
      page: ProfilePage,
      transitionsBuilder: TransitionsBuilders.slideLeft,
      durationInMilliseconds: 400,
    ),
    CustomRoute(
      path: '/loginPage',
      page: LoginPage,
      transitionsBuilder: TransitionsBuilders.slideTop,
      durationInMilliseconds: 400,
    ),
    CustomRoute(
      path: '/verificationCidePage',
      page: VerificationCodePage,
      transitionsBuilder: TransitionsBuilders.slideTop,
      durationInMilliseconds: 400,
    ),
    CustomRoute(
      path: '/customLoader',
      page: CustomLoader,
      initial: true,
      transitionsBuilder: TransitionsBuilders.slideTop,
      durationInMilliseconds: 400,
    ),
  ],
)
class $AppRouter {}
