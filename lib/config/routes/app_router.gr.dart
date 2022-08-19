// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;
import 'package:wassiet/app/presentation/custom_loader/custom_loader.dart'
    as _i2;
import 'package:wassiet/app/presentation/pages.dart' as _i1;
import 'package:wassiet/widgets/custom_stepper.dart' as _i3;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    HomePageRoute.name: (routeData) {
      return _i4.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i1.HomePage(),
          transitionsBuilder: _i4.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 400,
          opaque: true,
          barrierDismissible: false);
    },
    SettingsPageRoute.name: (routeData) {
      return _i4.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i1.SettingsPage(),
          transitionsBuilder: _i4.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 400,
          opaque: true,
          barrierDismissible: false);
    },
    ChangeAppLanguagePageRoute.name: (routeData) {
      return _i4.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i1.ChangeAppLanguagePage(),
          transitionsBuilder: _i4.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 400,
          opaque: true,
          barrierDismissible: false);
    },
    ContactUsPageRoute.name: (routeData) {
      final args = routeData.argsAs<ContactUsPageRouteArgs>(
          orElse: () => const ContactUsPageRouteArgs());
      return _i4.CustomPage<dynamic>(
          routeData: routeData,
          child: _i1.ContactUsPage(key: args.key),
          transitionsBuilder: _i4.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 400,
          opaque: true,
          barrierDismissible: false);
    },
    UsingTermsPageRoute.name: (routeData) {
      return _i4.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i1.UsingTermsPage(),
          transitionsBuilder: _i4.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 400,
          opaque: true,
          barrierDismissible: false);
    },
    AboutAppPageRoute.name: (routeData) {
      return _i4.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i1.AboutAppPage(),
          transitionsBuilder: _i4.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 400,
          opaque: true,
          barrierDismissible: false);
    },
    ProfilePageRoute.name: (routeData) {
      final args = routeData.argsAs<ProfilePageRouteArgs>();
      return _i4.CustomPage<dynamic>(
          routeData: routeData,
          child: _i1.ProfilePage(key: args.key, isLoggedIn: args.isLoggedIn),
          transitionsBuilder: _i4.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 400,
          opaque: true,
          barrierDismissible: false);
    },
    LoginPageRoute.name: (routeData) {
      return _i4.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i1.LoginPage(),
          transitionsBuilder: _i4.TransitionsBuilders.slideTop,
          durationInMilliseconds: 400,
          opaque: true,
          barrierDismissible: false);
    },
    VerificationCodePageRoute.name: (routeData) {
      final args = routeData.argsAs<VerificationCodePageRouteArgs>();
      return _i4.CustomPage<dynamic>(
          routeData: routeData,
          child: _i1.VerificationCodePage(
              key: args.key, phoneNumber: args.phoneNumber),
          transitionsBuilder: _i4.TransitionsBuilders.slideTop,
          durationInMilliseconds: 400,
          opaque: true,
          barrierDismissible: false);
    },
    CustomLoaderRoute.name: (routeData) {
      return _i4.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i2.CustomLoader(),
          transitionsBuilder: _i4.TransitionsBuilders.slideTop,
          durationInMilliseconds: 400,
          opaque: true,
          barrierDismissible: false);
    },
    EditInformationsPageRoute.name: (routeData) {
      return _i4.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i1.EditInformationsPage(),
          transitionsBuilder: _i4.TransitionsBuilders.slideTop,
          durationInMilliseconds: 400,
          opaque: true,
          barrierDismissible: false);
    },
    CustomStepperRoute.name: (routeData) {
      final args = routeData.argsAs<CustomStepperRouteArgs>(
          orElse: () => const CustomStepperRouteArgs());
      return _i4.CustomPage<dynamic>(
          routeData: routeData,
          child: _i3.CustomStepper(
              key: args.key,
              activeStep: args.activeStep,
              dotCount: args.dotCount),
          transitionsBuilder: _i4.TransitionsBuilders.slideTop,
          durationInMilliseconds: 400,
          opaque: true,
          barrierDismissible: false);
    },
    CreateAnnouncementFirstStepRoute.name: (routeData) {
      final args = routeData.argsAs<CreateAnnouncementFirstStepRouteArgs>(
          orElse: () => const CreateAnnouncementFirstStepRouteArgs());
      return _i4.CustomPage<dynamic>(
          routeData: routeData,
          child: _i1.CreateAnnouncementFirstStep(key: args.key),
          transitionsBuilder: _i4.TransitionsBuilders.slideTop,
          durationInMilliseconds: 400,
          opaque: true,
          barrierDismissible: false);
    },
    CreateAnnouncementSecondStepRoute.name: (routeData) {
      final args = routeData.argsAs<CreateAnnouncementSecondStepRouteArgs>(
          orElse: () => const CreateAnnouncementSecondStepRouteArgs());
      return _i4.CustomPage<dynamic>(
          routeData: routeData,
          child: _i1.CreateAnnouncementSecondStep(key: args.key),
          transitionsBuilder: _i4.TransitionsBuilders.slideTop,
          durationInMilliseconds: 400,
          opaque: true,
          barrierDismissible: false);
    },
    CreateAnnouncementThirdStepRoute.name: (routeData) {
      final args = routeData.argsAs<CreateAnnouncementThirdStepRouteArgs>(
          orElse: () => const CreateAnnouncementThirdStepRouteArgs());
      return _i4.CustomPage<dynamic>(
          routeData: routeData,
          child: _i1.CreateAnnouncementThirdStep(key: args.key),
          transitionsBuilder: _i4.TransitionsBuilders.slideTop,
          durationInMilliseconds: 400,
          opaque: true,
          barrierDismissible: false);
    },
    CreateAnnouncementFourthStepRoute.name: (routeData) {
      final args = routeData.argsAs<CreateAnnouncementFourthStepRouteArgs>(
          orElse: () => const CreateAnnouncementFourthStepRouteArgs());
      return _i4.CustomPage<dynamic>(
          routeData: routeData,
          child: _i1.CreateAnnouncementFourthStep(key: args.key),
          transitionsBuilder: _i4.TransitionsBuilders.slideTop,
          durationInMilliseconds: 400,
          opaque: true,
          barrierDismissible: false);
    },
    CreateAnnouncementFithStepRoute.name: (routeData) {
      final args = routeData.argsAs<CreateAnnouncementFithStepRouteArgs>(
          orElse: () => const CreateAnnouncementFithStepRouteArgs());
      return _i4.CustomPage<dynamic>(
          routeData: routeData,
          child: _i1.CreateAnnouncementFithStep(key: args.key),
          transitionsBuilder: _i4.TransitionsBuilders.slideTop,
          durationInMilliseconds: 400,
          opaque: true,
          barrierDismissible: false);
    },
    FilterPageRoute.name: (routeData) {
      final args = routeData.argsAs<FilterPageRouteArgs>(
          orElse: () => const FilterPageRouteArgs());
      return _i4.CustomPage<dynamic>(
          routeData: routeData,
          child: _i1.FilterPage(key: args.key),
          transitionsBuilder: _i4.TransitionsBuilders.slideTop,
          durationInMilliseconds: 400,
          opaque: true,
          barrierDismissible: false);
    },
    AllChatsRoute.name: (routeData) {
      return _i4.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i1.AllChats(),
          transitionsBuilder: _i4.TransitionsBuilders.slideTop,
          durationInMilliseconds: 400,
          opaque: true,
          barrierDismissible: false);
    },
    NotificationsPageRoute.name: (routeData) {
      return _i4.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i1.NotificationsPage(),
          transitionsBuilder: _i4.TransitionsBuilders.slideTop,
          durationInMilliseconds: 400,
          opaque: true,
          barrierDismissible: false);
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig('/#redirect',
            path: '/', redirectTo: '/homePage', fullMatch: true),
        _i4.RouteConfig(HomePageRoute.name, path: '/homePage'),
        _i4.RouteConfig(SettingsPageRoute.name, path: '/settingsPage'),
        _i4.RouteConfig(ChangeAppLanguagePageRoute.name,
            path: '/changeAppLanguagePage'),
        _i4.RouteConfig(ContactUsPageRoute.name, path: '/contactUsPage'),
        _i4.RouteConfig(UsingTermsPageRoute.name, path: '/usingTermsPage'),
        _i4.RouteConfig(AboutAppPageRoute.name, path: '/aboutAppPage'),
        _i4.RouteConfig(ProfilePageRoute.name, path: '/profilePage'),
        _i4.RouteConfig(LoginPageRoute.name, path: '/loginPage'),
        _i4.RouteConfig(VerificationCodePageRoute.name,
            path: '/verificationCidePage'),
        _i4.RouteConfig(CustomLoaderRoute.name, path: '/customLoader'),
        _i4.RouteConfig(EditInformationsPageRoute.name,
            path: '/editInformation'),
        _i4.RouteConfig(CustomStepperRoute.name, path: '/stepper'),
        _i4.RouteConfig(CreateAnnouncementFirstStepRoute.name,
            path: '/createAnnouncementFirstStep'),
        _i4.RouteConfig(CreateAnnouncementSecondStepRoute.name,
            path: '/createAnnouncementSecondStep'),
        _i4.RouteConfig(CreateAnnouncementThirdStepRoute.name,
            path: '/createAnnouncementThirdStep'),
        _i4.RouteConfig(CreateAnnouncementFourthStepRoute.name,
            path: '/createAnnouncementFourthStep'),
        _i4.RouteConfig(CreateAnnouncementFithStepRoute.name,
            path: '/createAnnouncementFithStep'),
        _i4.RouteConfig(FilterPageRoute.name, path: '/filterPage'),
        _i4.RouteConfig(AllChatsRoute.name, path: '/allChats'),
        _i4.RouteConfig(NotificationsPageRoute.name, path: '/notifications')
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomePageRoute extends _i4.PageRouteInfo<void> {
  const HomePageRoute() : super(HomePageRoute.name, path: '/homePage');

  static const String name = 'HomePageRoute';
}

/// generated route for
/// [_i1.SettingsPage]
class SettingsPageRoute extends _i4.PageRouteInfo<void> {
  const SettingsPageRoute()
      : super(SettingsPageRoute.name, path: '/settingsPage');

  static const String name = 'SettingsPageRoute';
}

/// generated route for
/// [_i1.ChangeAppLanguagePage]
class ChangeAppLanguagePageRoute extends _i4.PageRouteInfo<void> {
  const ChangeAppLanguagePageRoute()
      : super(ChangeAppLanguagePageRoute.name, path: '/changeAppLanguagePage');

  static const String name = 'ChangeAppLanguagePageRoute';
}

/// generated route for
/// [_i1.ContactUsPage]
class ContactUsPageRoute extends _i4.PageRouteInfo<ContactUsPageRouteArgs> {
  ContactUsPageRoute({_i5.Key? key})
      : super(ContactUsPageRoute.name,
            path: '/contactUsPage', args: ContactUsPageRouteArgs(key: key));

  static const String name = 'ContactUsPageRoute';
}

class ContactUsPageRouteArgs {
  const ContactUsPageRouteArgs({this.key});

  final _i5.Key? key;

  @override
  String toString() {
    return 'ContactUsPageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i1.UsingTermsPage]
class UsingTermsPageRoute extends _i4.PageRouteInfo<void> {
  const UsingTermsPageRoute()
      : super(UsingTermsPageRoute.name, path: '/usingTermsPage');

  static const String name = 'UsingTermsPageRoute';
}

/// generated route for
/// [_i1.AboutAppPage]
class AboutAppPageRoute extends _i4.PageRouteInfo<void> {
  const AboutAppPageRoute()
      : super(AboutAppPageRoute.name, path: '/aboutAppPage');

  static const String name = 'AboutAppPageRoute';
}

/// generated route for
/// [_i1.ProfilePage]
class ProfilePageRoute extends _i4.PageRouteInfo<ProfilePageRouteArgs> {
  ProfilePageRoute({_i5.Key? key, required bool isLoggedIn})
      : super(ProfilePageRoute.name,
            path: '/profilePage',
            args: ProfilePageRouteArgs(key: key, isLoggedIn: isLoggedIn));

  static const String name = 'ProfilePageRoute';
}

class ProfilePageRouteArgs {
  const ProfilePageRouteArgs({this.key, required this.isLoggedIn});

  final _i5.Key? key;

  final bool isLoggedIn;

  @override
  String toString() {
    return 'ProfilePageRouteArgs{key: $key, isLoggedIn: $isLoggedIn}';
  }
}

/// generated route for
/// [_i1.LoginPage]
class LoginPageRoute extends _i4.PageRouteInfo<void> {
  const LoginPageRoute() : super(LoginPageRoute.name, path: '/loginPage');

  static const String name = 'LoginPageRoute';
}

/// generated route for
/// [_i1.VerificationCodePage]
class VerificationCodePageRoute
    extends _i4.PageRouteInfo<VerificationCodePageRouteArgs> {
  VerificationCodePageRoute({_i5.Key? key, required String phoneNumber})
      : super(VerificationCodePageRoute.name,
            path: '/verificationCidePage',
            args: VerificationCodePageRouteArgs(
                key: key, phoneNumber: phoneNumber));

  static const String name = 'VerificationCodePageRoute';
}

class VerificationCodePageRouteArgs {
  const VerificationCodePageRouteArgs({this.key, required this.phoneNumber});

  final _i5.Key? key;

  final String phoneNumber;

  @override
  String toString() {
    return 'VerificationCodePageRouteArgs{key: $key, phoneNumber: $phoneNumber}';
  }
}

/// generated route for
/// [_i2.CustomLoader]
class CustomLoaderRoute extends _i4.PageRouteInfo<void> {
  const CustomLoaderRoute()
      : super(CustomLoaderRoute.name, path: '/customLoader');

  static const String name = 'CustomLoaderRoute';
}

/// generated route for
/// [_i1.EditInformationsPage]
class EditInformationsPageRoute extends _i4.PageRouteInfo<void> {
  const EditInformationsPageRoute()
      : super(EditInformationsPageRoute.name, path: '/editInformation');

  static const String name = 'EditInformationsPageRoute';
}

/// generated route for
/// [_i3.CustomStepper]
class CustomStepperRoute extends _i4.PageRouteInfo<CustomStepperRouteArgs> {
  CustomStepperRoute({_i5.Key? key, int activeStep = 0, int dotCount = 5})
      : super(CustomStepperRoute.name,
            path: '/stepper',
            args: CustomStepperRouteArgs(
                key: key, activeStep: activeStep, dotCount: dotCount));

  static const String name = 'CustomStepperRoute';
}

class CustomStepperRouteArgs {
  const CustomStepperRouteArgs(
      {this.key, this.activeStep = 0, this.dotCount = 5});

  final _i5.Key? key;

  final int activeStep;

  final int dotCount;

  @override
  String toString() {
    return 'CustomStepperRouteArgs{key: $key, activeStep: $activeStep, dotCount: $dotCount}';
  }
}

/// generated route for
/// [_i1.CreateAnnouncementFirstStep]
class CreateAnnouncementFirstStepRoute
    extends _i4.PageRouteInfo<CreateAnnouncementFirstStepRouteArgs> {
  CreateAnnouncementFirstStepRoute({_i5.Key? key})
      : super(CreateAnnouncementFirstStepRoute.name,
            path: '/createAnnouncementFirstStep',
            args: CreateAnnouncementFirstStepRouteArgs(key: key));

  static const String name = 'CreateAnnouncementFirstStepRoute';
}

class CreateAnnouncementFirstStepRouteArgs {
  const CreateAnnouncementFirstStepRouteArgs({this.key});

  final _i5.Key? key;

  @override
  String toString() {
    return 'CreateAnnouncementFirstStepRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i1.CreateAnnouncementSecondStep]
class CreateAnnouncementSecondStepRoute
    extends _i4.PageRouteInfo<CreateAnnouncementSecondStepRouteArgs> {
  CreateAnnouncementSecondStepRoute({_i5.Key? key})
      : super(CreateAnnouncementSecondStepRoute.name,
            path: '/createAnnouncementSecondStep',
            args: CreateAnnouncementSecondStepRouteArgs(key: key));

  static const String name = 'CreateAnnouncementSecondStepRoute';
}

class CreateAnnouncementSecondStepRouteArgs {
  const CreateAnnouncementSecondStepRouteArgs({this.key});

  final _i5.Key? key;

  @override
  String toString() {
    return 'CreateAnnouncementSecondStepRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i1.CreateAnnouncementThirdStep]
class CreateAnnouncementThirdStepRoute
    extends _i4.PageRouteInfo<CreateAnnouncementThirdStepRouteArgs> {
  CreateAnnouncementThirdStepRoute({_i5.Key? key})
      : super(CreateAnnouncementThirdStepRoute.name,
            path: '/createAnnouncementThirdStep',
            args: CreateAnnouncementThirdStepRouteArgs(key: key));

  static const String name = 'CreateAnnouncementThirdStepRoute';
}

class CreateAnnouncementThirdStepRouteArgs {
  const CreateAnnouncementThirdStepRouteArgs({this.key});

  final _i5.Key? key;

  @override
  String toString() {
    return 'CreateAnnouncementThirdStepRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i1.CreateAnnouncementFourthStep]
class CreateAnnouncementFourthStepRoute
    extends _i4.PageRouteInfo<CreateAnnouncementFourthStepRouteArgs> {
  CreateAnnouncementFourthStepRoute({_i5.Key? key})
      : super(CreateAnnouncementFourthStepRoute.name,
            path: '/createAnnouncementFourthStep',
            args: CreateAnnouncementFourthStepRouteArgs(key: key));

  static const String name = 'CreateAnnouncementFourthStepRoute';
}

class CreateAnnouncementFourthStepRouteArgs {
  const CreateAnnouncementFourthStepRouteArgs({this.key});

  final _i5.Key? key;

  @override
  String toString() {
    return 'CreateAnnouncementFourthStepRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i1.CreateAnnouncementFithStep]
class CreateAnnouncementFithStepRoute
    extends _i4.PageRouteInfo<CreateAnnouncementFithStepRouteArgs> {
  CreateAnnouncementFithStepRoute({_i5.Key? key})
      : super(CreateAnnouncementFithStepRoute.name,
            path: '/createAnnouncementFithStep',
            args: CreateAnnouncementFithStepRouteArgs(key: key));

  static const String name = 'CreateAnnouncementFithStepRoute';
}

class CreateAnnouncementFithStepRouteArgs {
  const CreateAnnouncementFithStepRouteArgs({this.key});

  final _i5.Key? key;

  @override
  String toString() {
    return 'CreateAnnouncementFithStepRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i1.FilterPage]
class FilterPageRoute extends _i4.PageRouteInfo<FilterPageRouteArgs> {
  FilterPageRoute({_i5.Key? key})
      : super(FilterPageRoute.name,
            path: '/filterPage', args: FilterPageRouteArgs(key: key));

  static const String name = 'FilterPageRoute';
}

class FilterPageRouteArgs {
  const FilterPageRouteArgs({this.key});

  final _i5.Key? key;

  @override
  String toString() {
    return 'FilterPageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i1.AllChats]
class AllChatsRoute extends _i4.PageRouteInfo<void> {
  const AllChatsRoute() : super(AllChatsRoute.name, path: '/allChats');

  static const String name = 'AllChatsRoute';
}

/// generated route for
/// [_i1.NotificationsPage]
class NotificationsPageRoute extends _i4.PageRouteInfo<void> {
  const NotificationsPageRoute()
      : super(NotificationsPageRoute.name, path: '/notifications');

  static const String name = 'NotificationsPageRoute';
}
