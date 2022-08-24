import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:wassiet/config/routes/app_router.gr.dart';
import 'package:wassiet/config/styles/themes/app_themes.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'generated/l10n.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

final _appRouter = AppRouter();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: false,
      builder: (BuildContext context, Widget? child) => MaterialApp.router(
        theme: AppThemes.defaultAppTheme,
        darkTheme: AppThemes.defaultAppTheme,
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.light,
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        locale: const Locale('en'),
        supportedLocales: S.delegate.supportedLocales,
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
      ),
    );
  }
}
