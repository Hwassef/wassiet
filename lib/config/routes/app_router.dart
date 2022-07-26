import 'package:auto_route/annotations.dart';
import 'package:wassiet/app/presentation/home_page.dart';

@AdaptiveAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(
      path: '/homePage',
      page: HomePage,
      initial: true,
    ),
  ],
)
class $AppRouter {}
