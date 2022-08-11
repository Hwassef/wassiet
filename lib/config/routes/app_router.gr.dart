// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;
import 'package:wassiet/app/presentation/custom_loader/custom_loader.dart'
    as _i2;
import 'package:wassiet/app/presentation/pages.dart' as _i1;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    HomePageRoute.name: (routeData) {
      return _i3.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i1.HomePage(),
          transitionsBuilder: _i3.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 400,
          opaque: true,
          barrierDismissible: false);
    },
    SettingsPageRoute.name: (routeData) {
      return _i3.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i1.SettingsPage(),
          transitionsBuilder: _i3.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 400,
          opaque: true,
          barrierDismissible: false);
    },
    ChangeAppLanguagePageRoute.name: (routeData) {
      return _i3.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i1.ChangeAppLanguagePage(),
          transitionsBuilder: _i3.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 400,
          opaque: true,
          barrierDismissible: false);
    },
    ContactUsPageRoute.name: (routeData) {
      final args = routeData.argsAs<ContactUsPageRouteArgs>(
          orElse: () => const ContactUsPageRouteArgs());
      return _i3.CustomPage<dynamic>(
          routeData: routeData,
          child: _i1.ContactUsPage(key: args.key),
          transitionsBuilder: _i3.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 400,
          opaque: true,
          barrierDismissible: false);
    },
    UsingTermsPageRoute.name: (routeData) {
      return _i3.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i1.UsingTermsPage(),
          transitionsBuilder: _i3.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 400,
          opaque: true,
          barrierDismissible: false);
    },
    AboutAppPageRoute.name: (routeData) {
      return _i3.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i1.AboutAppPage(),
          transitionsBuilder: _i3.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 400,
          opaque: true,
          barrierDismissible: false);
    },
    ProfilePageRoute.name: (routeData) {
      final args = routeData.argsAs<ProfilePageRouteArgs>();
      return _i3.CustomPage<dynamic>(
          routeData: routeData,
          child: _i1.ProfilePage(key: args.key, isLoggedIn: args.isLoggedIn),
          transitionsBuilder: _i3.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 400,
          opaque: true,
          barrierDismissible: false);
    },
    LoginPageRoute.name: (routeData) {
      return _i3.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i1.LoginPage(),
          transitionsBuilder: _i3.TransitionsBuilders.slideTop,
          durationInMilliseconds: 400,
          opaque: true,
          barrierDismissible: false);
    },
    VerificationCodePageRoute.name: (routeData) {
      final args = routeData.argsAs<VerificationCodePageRouteArgs>();
      return _i3.CustomPage<dynamic>(
          routeData: routeData,
          child: _i1.VerificationCodePage(
              key: args.key, phoneNumber: args.phoneNumber),
          transitionsBuilder: _i3.TransitionsBuilders.slideTop,
          durationInMilliseconds: 400,
          opaque: true,
          barrierDismissible: false);
    },
    CustomLoaderRoute.name: (routeData) {
      return _i3.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i2.CustomLoader(),
          transitionsBuilder: _i3.TransitionsBuilders.slideTop,
          durationInMilliseconds: 400,
          opaque: true,
          barrierDismissible: false);
    },
    EditInformationsPageRoute.name: (routeData) {
      return _i3.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i1.EditInformationsPage(),
          transitionsBuilder: _i3.TransitionsBuilders.slideTop,
          durationInMilliseconds: 400,
          opaque: true,
          barrierDismissible: false);
    },
    CreateAnnouncementFirstStepRoute.name: (routeData) {
      final args = routeData.argsAs<CreateAnnouncementFirstStepRouteArgs>(
          orElse: () => const CreateAnnouncementFirstStepRouteArgs());
      return _i3.CustomPage<dynamic>(
          routeData: routeData,
          child: _i1.CreateAnnouncementFirstStep(key: args.key),
          transitionsBuilder: _i3.TransitionsBuilders.slideTop,
          durationInMilliseconds: 400,
          opaque: true,
          barrierDismissible: false);
    },
    CreateAnnouncementSecondStepRoute.name: (routeData) {
      final args = routeData.argsAs<CreateAnnouncementSecondStepRouteArgs>(
          orElse: () => const CreateAnnouncementSecondStepRouteArgs());
      return _i3.CustomPage<dynamic>(
          routeData: routeData,
          child: _i1.CreateAnnouncementSecondStep(key: args.key),
          transitionsBuilder: _i3.TransitionsBuilders.slideTop,
          durationInMilliseconds: 400,
          opaque: true,
          barrierDismissible: false);
    },
    CreateAnnouncementThirdStepRoute.name: (routeData) {
      final args = routeData.argsAs<CreateAnnouncementThirdStepRouteArgs>(
          orElse: () => const CreateAnnouncementThirdStepRouteArgs());
      return _i3.CustomPage<dynamic>(
          routeData: routeData,
          child: _i1.CreateAnnouncementThirdStep(key: args.key),
          transitionsBuilder: _i3.TransitionsBuilders.slideTop,
          durationInMilliseconds: 400,
          opaque: true,
          barrierDismissible: false);
    },
    CreateAnnouncementFourthStepRoute.name: (routeData) {
      final args = routeData.argsAs<CreateAnnouncementFourthStepRouteArgs>(
          orElse: () => const CreateAnnouncementFourthStepRouteArgs());
      return _i3.CustomPage<dynamic>(
          routeData: routeData,
          child: _i1.CreateAnnouncementFourthStep(key: args.key),
          transitionsBuilder: _i3.TransitionsBuilders.slideTop,
          durationInMilliseconds: 400,
          opaque: true,
          barrierDismissible: false);
    },
    CreateAnnouncementFithStepRoute.name: (routeData) {
      final args = routeData.argsAs<CreateAnnouncementFithStepRouteArgs>(
          orElse: () => const CreateAnnouncementFithStepRouteArgs());
      return _i3.CustomPage<dynamic>(
          routeData: routeData,
          child: _i1.CreateAnnouncementFithStep(key: args.key),
          transitionsBuilder: _i3.TransitionsBuilders.slideTop,
          durationInMilliseconds: 400,
          opaque: true,
          barrierDismissible: false);
    },
    FilterPageRoute.name: (routeData) {
      final args = routeData.argsAs<FilterPageRouteArgs>(
          orElse: () => const FilterPageRouteArgs());
      return _i3.CustomPage<dynamic>(
          routeData: routeData,
          child: _i1.FilterPage(key: args.key),
          transitionsBuilder: _i3.TransitionsBuilders.slideTop,
          durationInMilliseconds: 400,
          opaque: true,
          barrierDismissible: false);
    }
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig('/#redirect',
            path: '/', redirectTo: '/loginPage', fullMatch: true),
        _i3.RouteConfig(HomePageRoute.name, path: '/homePage'),
        _i3.RouteConfig(SettingsPageRoute.name, path: '/settingsPage'),
        _i3.RouteConfig(ChangeAppLanguagePageRoute.name,
            path: '/changeAppLanguagePage'),
        _i3.RouteConfig(ContactUsPageRoute.name, path: '/contactUsPage'),
        _i3.RouteConfig(UsingTermsPageRoute.name, path: '/usingTermsPage'),
        _i3.RouteConfig(AboutAppPageRoute.name, path: '/aboutAppPage'),
        _i3.RouteConfig(ProfilePageRoute.name, path: '/profilePage'),
        _i3.RouteConfig(LoginPageRoute.name, path: '/loginPage'),
        _i3.RouteConfig(VerificationCodePageRoute.name,
            path: '/verificationCidePage'),
        _i3.RouteConfig(CustomLoaderRoute.name, path: '/customLoader'),
        _i3.RouteConfig(EditInformationsPageRoute.name,
            path: '/editInformation'),
        _i3.RouteConfig(CreateAnnouncementFirstStepRoute.name,
            path: '/createAnnouncementFirstStep'),
        _i3.RouteConfig(CreateAnnouncementSecondStepRoute.name,
            path: '/createAnnouncementSecondStep'),
        _i3.RouteConfig(CreateAnnouncementThirdStepRoute.name,
            path: '/createAnnouncementThirdStep'),
        _i3.RouteConfig(CreateAnnouncementFourthStepRoute.name,
            path: '/createAnnouncementFourthStep'),
        _i3.RouteConfig(CreateAnnouncementFithStepRoute.name,
            path: '/createAnnouncementFithStep'),
        _i3.RouteConfig(FilterPageRoute.name, path: '/filterPage')
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomePageRoute extends _i3.PageRouteInfo<void> {
  const HomePageRoute() : super(HomePageRoute.name, path: '/homePage');

  static const String name = 'HomePageRoute';
}

/// generated route for
/// [_i1.SettingsPage]
class SettingsPageRoute extends _i3.PageRouteInfo<void> {
  const SettingsPageRoute()
      : super(SettingsPageRoute.name, path: '/settingsPage');

  static const String name = 'SettingsPageRoute';
}

/// generated route for
/// [_i1.ChangeAppLanguagePage]
class ChangeAppLanguagePageRoute extends _i3.PageRouteInfo<void> {
  const ChangeAppLanguagePageRoute()
      : super(ChangeAppLanguagePageRoute.name, path: '/changeAppLanguagePage');

  static const String name = 'ChangeAppLanguagePageRoute';
}

/// generated route for
/// [_i1.ContactUsPage]
class ContactUsPageRoute extends _i3.PageRouteInfo<ContactUsPageRouteArgs> {
  ContactUsPageRoute({_i4.Key? key})
      : super(ContactUsPageRoute.name,
            path: '/contactUsPage', args: ContactUsPageRouteArgs(key: key));

  static const String name = 'ContactUsPageRoute';
}

class ContactUsPageRouteArgs {
  const ContactUsPageRouteArgs({this.key});

  final _i4.Key? key;

  @override
  String toString() {
    return 'ContactUsPageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i1.UsingTermsPage]
class UsingTermsPageRoute extends _i3.PageRouteInfo<void> {
  const UsingTermsPageRoute()
      : super(UsingTermsPageRoute.name, path: '/usingTermsPage');

  static const String name = 'UsingTermsPageRoute';
}

/// generated route for
/// [_i1.AboutAppPage]
class AboutAppPageRoute extends _i3.PageRouteInfo<void> {
  const AboutAppPageRoute()
      : super(AboutAppPageRoute.name, path: '/aboutAppPage');

  static const String name = 'AboutAppPageRoute';
}

/// generated route for
/// [_i1.ProfilePage]
class ProfilePageRoute extends _i3.PageRouteInfo<ProfilePageRouteArgs> {
  ProfilePageRoute({_i4.Key? key, required bool isLoggedIn})
      : super(ProfilePageRoute.name,
            path: '/profilePage',
            args: ProfilePageRouteArgs(key: key, isLoggedIn: isLoggedIn));

  static const String name = 'ProfilePageRoute';
}

class ProfilePageRouteArgs {
  const ProfilePageRouteArgs({this.key, required this.isLoggedIn});

  final _i4.Key? key;

  final bool isLoggedIn;

  @override
  String toString() {
    return 'ProfilePageRouteArgs{key: $key, isLoggedIn: $isLoggedIn}';
  }
}

/// generated route for
/// [_i1.LoginPage]
class LoginPageRoute extends _i3.PageRouteInfo<void> {
  const LoginPageRoute() : super(LoginPageRoute.name, path: '/loginPage');

  static const String name = 'LoginPageRoute';
}

/// generated route for
/// [_i1.VerificationCodePage]
class VerificationCodePageRoute
    extends _i3.PageRouteInfo<VerificationCodePageRouteArgs> {
  VerificationCodePageRoute({_i4.Key? key, required String phoneNumber})
      : super(VerificationCodePageRoute.name,
            path: '/verificationCidePage',
            args: VerificationCodePageRouteArgs(
                key: key, phoneNumber: phoneNumber));

  static const String name = 'VerificationCodePageRoute';
}

class VerificationCodePageRouteArgs {
  const VerificationCodePageRouteArgs({this.key, required this.phoneNumber});

  final _i4.Key? key;

  final String phoneNumber;

  @override
  String toString() {
    return 'VerificationCodePageRouteArgs{key: $key, phoneNumber: $phoneNumber}';
  }
}

/// generated route for
/// [_i2.CustomLoader]
class CustomLoaderRoute extends _i3.PageRouteInfo<void> {
  const CustomLoaderRoute()
      : super(CustomLoaderRoute.name, path: '/customLoader');

  static const String name = 'CustomLoaderRoute';
}

/// generated route for
/// [_i1.EditInformationsPage]
class EditInformationsPageRoute extends _i3.PageRouteInfo<void> {
  const EditInformationsPageRoute()
      : super(EditInformationsPageRoute.name, path: '/editInformation');

  static const String name = 'EditInformationsPageRoute';
}

/// generated route for
/// [_i1.CreateAnnouncementFirstStep]
class CreateAnnouncementFirstStepRoute
    extends _i3.PageRouteInfo<CreateAnnouncementFirstStepRouteArgs> {
  CreateAnnouncementFirstStepRoute({_i4.Key? key})
      : super(CreateAnnouncementFirstStepRoute.name,
            path: '/createAnnouncementFirstStep',
            args: CreateAnnouncementFirstStepRouteArgs(key: key));

  static const String name = 'CreateAnnouncementFirstStepRoute';
}

class CreateAnnouncementFirstStepRouteArgs {
  const CreateAnnouncementFirstStepRouteArgs({this.key});

  final _i4.Key? key;

  @override
  String toString() {
    return 'CreateAnnouncementFirstStepRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i1.CreateAnnouncementSecondStep]
class CreateAnnouncementSecondStepRoute
    extends _i3.PageRouteInfo<CreateAnnouncementSecondStepRouteArgs> {
  CreateAnnouncementSecondStepRoute({_i4.Key? key})
      : super(CreateAnnouncementSecondStepRoute.name,
            path: '/createAnnouncementSecondStep',
            args: CreateAnnouncementSecondStepRouteArgs(key: key));

  static const String name = 'CreateAnnouncementSecondStepRoute';
}

class CreateAnnouncementSecondStepRouteArgs {
  const CreateAnnouncementSecondStepRouteArgs({this.key});

  final _i4.Key? key;

  @override
  String toString() {
    return 'CreateAnnouncementSecondStepRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i1.CreateAnnouncementThirdStep]
class CreateAnnouncementThirdStepRoute
    extends _i3.PageRouteInfo<CreateAnnouncementThirdStepRouteArgs> {
  CreateAnnouncementThirdStepRoute({_i4.Key? key})
      : super(CreateAnnouncementThirdStepRoute.name,
            path: '/createAnnouncementThirdStep',
            args: CreateAnnouncementThirdStepRouteArgs(key: key));

  static const String name = 'CreateAnnouncementThirdStepRoute';
}

class CreateAnnouncementThirdStepRouteArgs {
  const CreateAnnouncementThirdStepRouteArgs({this.key});

  final _i4.Key? key;

  @override
  String toString() {
    return 'CreateAnnouncementThirdStepRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i1.CreateAnnouncementFourthStep]
class CreateAnnouncementFourthStepRoute
    extends _i3.PageRouteInfo<CreateAnnouncementFourthStepRouteArgs> {
  CreateAnnouncementFourthStepRoute({_i4.Key? key})
      : super(CreateAnnouncementFourthStepRoute.name,
            path: '/createAnnouncementFourthStep',
            args: CreateAnnouncementFourthStepRouteArgs(key: key));

  static const String name = 'CreateAnnouncementFourthStepRoute';
}

class CreateAnnouncementFourthStepRouteArgs {
  const CreateAnnouncementFourthStepRouteArgs({this.key});

  final _i4.Key? key;

  @override
  String toString() {
    return 'CreateAnnouncementFourthStepRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i1.CreateAnnouncementFithStep]
class CreateAnnouncementFithStepRoute
    extends _i3.PageRouteInfo<CreateAnnouncementFithStepRouteArgs> {
  CreateAnnouncementFithStepRoute({_i4.Key? key})
      : super(CreateAnnouncementFithStepRoute.name,
            path: '/createAnnouncementFithStep',
            args: CreateAnnouncementFithStepRouteArgs(key: key));

  static const String name = 'CreateAnnouncementFithStepRoute';
}

class CreateAnnouncementFithStepRouteArgs {
  const CreateAnnouncementFithStepRouteArgs({this.key});

  final _i4.Key? key;

  @override
  String toString() {
    return 'CreateAnnouncementFithStepRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i1.FilterPage]
class FilterPageRoute extends _i3.PageRouteInfo<FilterPageRouteArgs> {
  FilterPageRoute({_i4.Key? key})
      : super(FilterPageRoute.name,
            path: '/filterPage', args: FilterPageRouteArgs(key: key));

  static const String name = 'FilterPageRoute';
}

class FilterPageRouteArgs {
  const FilterPageRouteArgs({this.key});

  final _i4.Key? key;

  @override
  String toString() {
    return 'FilterPageRouteArgs{key: $key}';
  }
}
