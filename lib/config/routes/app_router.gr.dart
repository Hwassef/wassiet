// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i2;
import 'package:flutter/cupertino.dart' as _i4;
import 'package:flutter/material.dart' as _i3;
import 'package:wassiet/app/presentation/pages.dart' as _i1;

class AppRouter extends _i2.RootStackRouter {
  AppRouter([_i3.GlobalKey<_i3.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    HomePageRoute.name: (routeData) {
      return _i2.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i1.HomePage(),
          transitionsBuilder: _i2.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 400,
          opaque: true,
          barrierDismissible: false);
    },
    SettingsPageRoute.name: (routeData) {
      return _i2.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i1.SettingsPage(),
          transitionsBuilder: _i2.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 400,
          opaque: true,
          barrierDismissible: false);
    },
    ChangeAppLanguagePageRoute.name: (routeData) {
      return _i2.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i1.ChangeAppLanguagePage(),
          transitionsBuilder: _i2.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 400,
          opaque: true,
          barrierDismissible: false);
    },
    ContactUsPageRoute.name: (routeData) {
      final args = routeData.argsAs<ContactUsPageRouteArgs>(
          orElse: () => const ContactUsPageRouteArgs());
      return _i2.CustomPage<dynamic>(
          routeData: routeData,
          child: _i1.ContactUsPage(key: args.key),
          transitionsBuilder: _i2.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 400,
          opaque: true,
          barrierDismissible: false);
    },
    UsingTermsPageRoute.name: (routeData) {
      return _i2.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i1.UsingTermsPage(),
          transitionsBuilder: _i2.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 400,
          opaque: true,
          barrierDismissible: false);
    },
    AboutAppPageRoute.name: (routeData) {
      return _i2.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i1.AboutAppPage(),
          transitionsBuilder: _i2.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 400,
          opaque: true,
          barrierDismissible: false);
    },
    ProfilePageRoute.name: (routeData) {
      final args = routeData.argsAs<ProfilePageRouteArgs>();
      return _i2.CustomPage<dynamic>(
          routeData: routeData,
          child: _i1.ProfilePage(key: args.key, isLoggedIn: args.isLoggedIn),
          transitionsBuilder: _i2.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 400,
          opaque: true,
          barrierDismissible: false);
    },
    LoginPageRoute.name: (routeData) {
      final args = routeData.argsAs<LoginPageRouteArgs>(
          orElse: () => const LoginPageRouteArgs());
      return _i2.CustomPage<dynamic>(
          routeData: routeData,
          child: _i1.LoginPage(key: args.key),
          transitionsBuilder: _i2.TransitionsBuilders.slideTop,
          durationInMilliseconds: 400,
          opaque: true,
          barrierDismissible: false);
    },
    VerificationCodePageRoute.name: (routeData) {
      final args = routeData.argsAs<VerificationCodePageRouteArgs>(
          orElse: () => const VerificationCodePageRouteArgs());
      return _i2.CustomPage<dynamic>(
          routeData: routeData,
          child: _i1.VerificationCodePage(key: args.key),
          transitionsBuilder: _i2.TransitionsBuilders.slideTop,
          durationInMilliseconds: 400,
          opaque: true,
          barrierDismissible: false);
    }
  };

  @override
  List<_i2.RouteConfig> get routes => [
        _i2.RouteConfig('/#redirect',
            path: '/', redirectTo: '/verificationCidePage', fullMatch: true),
        _i2.RouteConfig(HomePageRoute.name, path: '/homePage'),
        _i2.RouteConfig(SettingsPageRoute.name, path: '/settingsPage'),
        _i2.RouteConfig(ChangeAppLanguagePageRoute.name,
            path: '/changeAppLanguagePage'),
        _i2.RouteConfig(ContactUsPageRoute.name, path: '/contactUsPage'),
        _i2.RouteConfig(UsingTermsPageRoute.name, path: '/usingTermsPage'),
        _i2.RouteConfig(AboutAppPageRoute.name, path: '/aboutAppPage'),
        _i2.RouteConfig(ProfilePageRoute.name, path: '/profilePage'),
        _i2.RouteConfig(LoginPageRoute.name, path: '/loginPage'),
        _i2.RouteConfig(VerificationCodePageRoute.name,
            path: '/verificationCidePage')
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomePageRoute extends _i2.PageRouteInfo<void> {
  const HomePageRoute() : super(HomePageRoute.name, path: '/homePage');

  static const String name = 'HomePageRoute';
}

/// generated route for
/// [_i1.SettingsPage]
class SettingsPageRoute extends _i2.PageRouteInfo<void> {
  const SettingsPageRoute()
      : super(SettingsPageRoute.name, path: '/settingsPage');

  static const String name = 'SettingsPageRoute';
}

/// generated route for
/// [_i1.ChangeAppLanguagePage]
class ChangeAppLanguagePageRoute extends _i2.PageRouteInfo<void> {
  const ChangeAppLanguagePageRoute()
      : super(ChangeAppLanguagePageRoute.name, path: '/changeAppLanguagePage');

  static const String name = 'ChangeAppLanguagePageRoute';
}

/// generated route for
/// [_i1.ContactUsPage]
class ContactUsPageRoute extends _i2.PageRouteInfo<ContactUsPageRouteArgs> {
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
class UsingTermsPageRoute extends _i2.PageRouteInfo<void> {
  const UsingTermsPageRoute()
      : super(UsingTermsPageRoute.name, path: '/usingTermsPage');

  static const String name = 'UsingTermsPageRoute';
}

/// generated route for
/// [_i1.AboutAppPage]
class AboutAppPageRoute extends _i2.PageRouteInfo<void> {
  const AboutAppPageRoute()
      : super(AboutAppPageRoute.name, path: '/aboutAppPage');

  static const String name = 'AboutAppPageRoute';
}

/// generated route for
/// [_i1.ProfilePage]
class ProfilePageRoute extends _i2.PageRouteInfo<ProfilePageRouteArgs> {
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
class LoginPageRoute extends _i2.PageRouteInfo<LoginPageRouteArgs> {
  LoginPageRoute({_i4.Key? key})
      : super(LoginPageRoute.name,
            path: '/loginPage', args: LoginPageRouteArgs(key: key));

  static const String name = 'LoginPageRoute';
}

class LoginPageRouteArgs {
  const LoginPageRouteArgs({this.key});

  final _i4.Key? key;

  @override
  String toString() {
    return 'LoginPageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i1.VerificationCodePage]
class VerificationCodePageRoute
    extends _i2.PageRouteInfo<VerificationCodePageRouteArgs> {
  VerificationCodePageRoute({_i4.Key? key})
      : super(VerificationCodePageRoute.name,
            path: '/verificationCidePage',
            args: VerificationCodePageRouteArgs(key: key));

  static const String name = 'VerificationCodePageRoute';
}

class VerificationCodePageRouteArgs {
  const VerificationCodePageRouteArgs({this.key});

  final _i4.Key? key;

  @override
  String toString() {
    return 'VerificationCodePageRouteArgs{key: $key}';
  }
}
