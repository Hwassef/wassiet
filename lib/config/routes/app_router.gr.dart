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
import 'package:wassiet/app/presentation/annoucements/create_announcement/create_announcement_first_step.dart'
    as _i3;
import 'package:wassiet/app/presentation/custom_loader/custom_loader.dart'
    as _i2;
import 'package:wassiet/app/presentation/pages.dart' as _i1;

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
    CreateAnnouncementFirstStemRoute.name: (routeData) {
      return _i4.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i3.CreateAnnouncementFirstStem(),
          transitionsBuilder: _i4.TransitionsBuilders.slideTop,
          durationInMilliseconds: 400,
          opaque: true,
          barrierDismissible: false);
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig('/#redirect',
            path: '/',
            redirectTo: '/createAnnouncementFirstStem',
            fullMatch: true),
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
        _i4.RouteConfig(CreateAnnouncementFirstStemRoute.name,
            path: '/createAnnouncementFirstStem')
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
/// [_i3.CreateAnnouncementFirstStem]
class CreateAnnouncementFirstStemRoute extends _i4.PageRouteInfo<void> {
  const CreateAnnouncementFirstStemRoute()
      : super(CreateAnnouncementFirstStemRoute.name,
            path: '/createAnnouncementFirstStem');

  static const String name = 'CreateAnnouncementFirstStemRoute';
}
