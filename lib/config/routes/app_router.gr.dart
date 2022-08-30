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
import 'package:wassiet/app/features/announcement_details/presentation/pages/anouncement_details_page.dart'
    as _i2;
import 'package:wassiet/app/presentation/pages.dart' as _i1;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    AboutAppPageRoute.name: (routeData) {
      return _i3.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i1.AboutAppPage(),
          transitionsBuilder: _i3.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 400,
          opaque: true,
          barrierDismissible: false);
    },
    AnnouncementDetailsPageRoute.name: (routeData) {
      return _i3.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i2.AnnouncementDetailsPage(),
          transitionsBuilder: _i3.TransitionsBuilders.slideTop,
          durationInMilliseconds: 400,
          opaque: true,
          barrierDismissible: false);
    }
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig('/#redirect',
            path: '/', redirectTo: '/announcementDetails', fullMatch: true),
        _i3.RouteConfig(AboutAppPageRoute.name, path: '/aboutAppPage'),
        _i3.RouteConfig(AnnouncementDetailsPageRoute.name,
            path: '/announcementDetails')
      ];
}

/// generated route for
/// [_i1.AboutAppPage]
class AboutAppPageRoute extends _i3.PageRouteInfo<void> {
  const AboutAppPageRoute()
      : super(AboutAppPageRoute.name, path: '/aboutAppPage');

  static const String name = 'AboutAppPageRoute';
}

/// generated route for
/// [_i2.AnnouncementDetailsPage]
class AnnouncementDetailsPageRoute extends _i3.PageRouteInfo<void> {
  const AnnouncementDetailsPageRoute()
      : super(AnnouncementDetailsPageRoute.name, path: '/announcementDetails');

  static const String name = 'AnnouncementDetailsPageRoute';
}
