import 'package:auto_route/auto_route.dart';
import 'package:wassiet/app/presentation/custom_loader/custom_loader.dart';
import 'package:wassiet/app/presentation/pages.dart';
import 'package:wassiet/widgets/custom_stepper.dart';

@AdaptiveAutoRouter(
  routes: <AutoRoute>[
    CustomRoute(
      path: '/homePage',
      page: HomePage,
      transitionsBuilder: TransitionsBuilders.slideLeft,
      durationInMilliseconds: 400,
      initial: true,
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
      transitionsBuilder: TransitionsBuilders.slideTop,
      durationInMilliseconds: 400,
    ),
    CustomRoute(
      path: '/editInformation',
      page: EditInformationsPage,
      transitionsBuilder: TransitionsBuilders.slideTop,
      durationInMilliseconds: 400,
    ),
    CustomRoute(
      path: '/stepper',
      page: CustomStepper,
      transitionsBuilder: TransitionsBuilders.slideTop,
      durationInMilliseconds: 400,
    ),
    CustomRoute(
      path: '/createAnnouncementFirstStep',
      page: CreateAnnouncementFirstStep,
      transitionsBuilder: TransitionsBuilders.slideTop,
      durationInMilliseconds: 400,
    ),
    CustomRoute(
      path: '/createAnnouncementSecondStep',
      page: CreateAnnouncementSecondStep,
      transitionsBuilder: TransitionsBuilders.slideTop,
      durationInMilliseconds: 400,
    ),
    CustomRoute(
      path: '/createAnnouncementThirdStep',
      page: CreateAnnouncementThirdStep,
      transitionsBuilder: TransitionsBuilders.slideTop,
      durationInMilliseconds: 400,
    ),
    CustomRoute(
      path: '/createAnnouncementFourthStep',
      page: CreateAnnouncementFourthStep,
      transitionsBuilder: TransitionsBuilders.slideTop,
      durationInMilliseconds: 400,
    ),
    CustomRoute(
      path: '/createAnnouncementFithStep',
      page: CreateAnnouncementFithStep,
      transitionsBuilder: TransitionsBuilders.slideTop,
      durationInMilliseconds: 400,
    ),
    CustomRoute(
      path: '/filterPage',
      page: FilterPage,
      transitionsBuilder: TransitionsBuilders.slideTop,
      durationInMilliseconds: 400,
    ),
    CustomRoute(
      path: '/allChats',
      page: AllChats,
      transitionsBuilder: TransitionsBuilders.slideTop,
      durationInMilliseconds: 400,
    ),
    CustomRoute(
      path: '/notifications',
      page: NotificationsPage,
      transitionsBuilder: TransitionsBuilders.slideTop,
      durationInMilliseconds: 400,
    ),
  ],
)
class $AppRouter {}
