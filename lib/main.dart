import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:wassiet/config/styles/themes/app_themes.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'config/routes/app_router.gr.dart';
import 'generated/l10n.dart';
import 'dart:ui' as ui;

void main() {
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
        themeMode: ThemeMode.light,
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
      ),
    );
  }
}

//Add this CustomPaint widget to the Widget Tree

//Copy this CustomPainter code to the Bottom of the File
class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.05952381, size.height * -0.05909189);
    path_0.cubicTo(size.width * 0.05952381, size.height * -0.05909189, size.width * 0.2331349, size.height * -0.2108108,
        size.width * 0.4087302, size.height * -0.2108108);
    path_0.cubicTo(size.width * 0.5843254, size.height * -0.2108108, size.width * 0.7619048, size.height * -0.05909189,
        size.width * 0.7619048, size.height * -0.05909189);
    path_0.cubicTo(size.width * 0.7619048, size.height * -0.05909189, size.width * 0.8214286,
        size.height * -0.006837838, size.width * 0.8214286, size.height * 0.05761622);
    path_0.lineTo(size.width * 0.8214286, size.height * 0.3027027);
    path_0.lineTo(0, size.height * 0.3027027);
    path_0.lineTo(0, size.height * 0.05761622);
    path_0.cubicTo(0, size.height * -0.006837838, size.width * 0.05952381, size.height * -0.05909189,
        size.width * 0.05952381, size.height * -0.05909189);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);

    Paint paint_1_fill = Paint()..style = PaintingStyle.fill;
    paint_1_fill.color = Color(0xff00b4ef).withOpacity(1.0);
    canvas.drawCircle(Offset(size.width * 0.06250000, size.height * 0.1702703), size.width * 0.06250000, paint_1_fill);

    Path path_2 = Path();
    path_2.moveTo(size.width * 0.05140873, size.height * 0.09121622);
    path_2.lineTo(size.width * 0.03794643, size.height * 0.09121622);
    path_2.lineTo(size.width * 0.03794643, size.height * 0.05454054);
    path_2.arcToPoint(Offset(size.width * 0.03348214, size.height * 0.05454054),
        radius: Radius.elliptical(size.width * 0.002232143, size.height * 0.006081081),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_2.lineTo(size.width * 0.03348214, size.height * 0.09121622);
    path_2.lineTo(size.width * 0.02001984, size.height * 0.09121622);
    path_2.arcToPoint(Offset(size.width * 0.02001984, size.height * 0.1033784),
        radius: Radius.elliptical(size.width * 0.002232143, size.height * 0.006081081),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_2.lineTo(size.width * 0.03348214, size.height * 0.1033784);
    path_2.lineTo(size.width * 0.03348214, size.height * 0.1400541);
    path_2.arcToPoint(Offset(size.width * 0.03794643, size.height * 0.1400541),
        radius: Radius.elliptical(size.width * 0.002232143, size.height * 0.006081081),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_2.lineTo(size.width * 0.03794643, size.height * 0.1033784);
    path_2.lineTo(size.width * 0.05140873, size.height * 0.1033784);
    path_2.arcToPoint(Offset(size.width * 0.05140873, size.height * 0.09121622),
        radius: Radius.elliptical(size.width * 0.002232143, size.height * 0.006081081),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_2.close();

    Paint paint_2_fill = Paint()..style = PaintingStyle.fill;
    paint_2_fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path_2, paint_2_fill);

    Paint paint_3_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.007936508;
    paint_3_stroke.color = Color(0xff00b4ef).withOpacity(1.0);
    paint_3_stroke.strokeCap = StrokeCap.round;
    canvas.drawLine(
        Offset(size.width * 0.02976190, size.height * 55), Offset(size.width * 55, size.height * 55), paint_3_stroke);

    Path path_4 = Path();
    path_4.moveTo(size.width * 0.008928571, size.height * 0.06162162);
    path_4.lineTo(size.width * 0.03035714, size.height * 0.01621622);
    path_4.lineTo(size.width * 0.05178571, size.height * 0.06162162);
    path_4.lineTo(size.width * 0.05178571, size.height * 0.1329730);
    path_4.arcToPoint(Offset(size.width * 0.04702381, size.height * 0.1459459),
        radius: Radius.elliptical(size.width * 0.004761905, size.height * 0.01297297),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_4.lineTo(size.width * 0.01369048, size.height * 0.1459459);
    path_4.arcToPoint(Offset(size.width * 0.008928571, size.height * 0.1329730),
        radius: Radius.elliptical(size.width * 0.004761905, size.height * 0.01297297),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_4.close();

    Paint paint_4_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.004960317;
    paint_4_stroke.color = Color(0xff0066b8).withOpacity(1.0);
    paint_4_stroke.strokeCap = StrokeCap.round;
    paint_4_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_4, paint_4_stroke);

    Path path_5 = Path();
    path_5.moveTo(size.width * 0.02678571, size.height * 0.1783784);
    path_5.lineTo(size.width * 0.02678571, size.height * 0.09729730);
    path_5.lineTo(size.width * 0.04464286, size.height * 0.09729730);
    path_5.lineTo(size.width * 0.04464286, size.height * 0.1783784);

    Paint paint_5_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.004960317;
    paint_5_stroke.color = Color(0xff0066b8).withOpacity(1.0);
    paint_5_stroke.strokeCap = StrokeCap.round;
    paint_5_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_5, paint_5_stroke);

    Path path_6 = Path();
    path_6.moveTo(size.width * 0.3915000, size.height * 1.504773);
    path_6.arcToPoint(Offset(size.width * 0.3877877, size.height * 1.519908),
        radius: Radius.elliptical(size.width * 0.005128968, size.height * 0.01397297),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_6.lineTo(size.width * 0.3867044, size.height * 1.525130);
    path_6.arcToPoint(Offset(size.width * 0.3775774, size.height * 1.544286),
        radius: Radius.elliptical(size.width * 0.01537698, size.height * 0.04189189),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_6.lineTo(size.width * 0.3677083, size.height * 1.551757);
    path_6.arcToPoint(Offset(size.width * 0.3639702, size.height * 1.564238),
        radius: Radius.elliptical(size.width * 0.005128968, size.height * 0.01397297),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_6.lineTo(size.width * 0.3636885, size.height * 1.564454);
    path_6.arcToPoint(Offset(size.width * 0.3673452, size.height * 1.600303),
        radius: Radius.elliptical(size.width * 0.006829365, size.height * 0.01860541),
        rotation: 0,
        largeArc: true,
        clockwise: false);
    path_6.lineTo(size.width * 0.3676290, size.height * 1.600086);
    path_6.arcToPoint(Offset(size.width * 0.3714702, size.height * 1.606005),
        radius: Radius.elliptical(size.width * 0.005140873, size.height * 0.01400541),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_6.lineTo(size.width * 0.3738353, size.height * 1.629178);
    path_6.arcToPoint(Offset(size.width * 0.3837044, size.height * 1.621703),
        radius: Radius.elliptical(size.width * 0.005121032, size.height * 0.01395135),
        rotation: 0,
        largeArc: true,
        clockwise: false);
    path_6.lineTo(size.width * 0.3814187, size.height * 1.599297);
    path_6.lineTo(size.width * 0.3830635, size.height * 1.598054);
    path_6.arcToPoint(Offset(size.width * 0.3945119, size.height * 1.601622),
        radius: Radius.elliptical(size.width * 0.01537897, size.height * 0.04189730),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_6.lineTo(size.width * 0.3964306, size.height * 1.604578);
    path_6.arcToPoint(Offset(size.width * 0.4060397, size.height * 1.595135),
        radius: Radius.elliptical(size.width * 0.005121032, size.height * 0.01395135),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_6.lineTo(size.width * 0.3978095, size.height * 1.514476);
    path_6.arcToPoint(Offset(size.width * 0.3915000, size.height * 1.504773),
        radius: Radius.elliptical(size.width * 0.005126984, size.height * 0.01396757),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_6.close();

    Paint paint_6_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.004960317;
    paint_6_stroke.color = Color(0xff999999).withOpacity(1.0);
    paint_6_stroke.strokeCap = StrokeCap.round;
    paint_6_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_6, paint_6_stroke);

    Paint paint_7_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.004960317;
    paint_7_stroke.color = Color(0xff999999).withOpacity(1.0);
    paint_7_stroke.strokeCap = StrokeCap.round;
    paint_7_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawLine(Offset(size.width * 0.007210317, size.height * 55),
        Offset(size.width * 55, size.height * 0.005989189), paint_7_stroke);

    Paint paint_8_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.004960317;
    paint_8_stroke.color = Color(0xff999999).withOpacity(1.0);
    paint_8_stroke.strokeCap = StrokeCap.round;
    paint_8_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawLine(Offset(size.width * 0.005833333, size.height * 55),
        Offset(size.width * 55, size.height * 0.01300541), paint_8_stroke);

    Paint paint_9_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.004960317;
    paint_9_stroke.color = Color(0xff999999).withOpacity(1.0);
    paint_9_stroke.strokeCap = StrokeCap.round;
    paint_9_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawLine(Offset(size.width * 0.007503968, size.height * 0.001929730),
        Offset(size.width * 55, size.height * 55), paint_9_stroke);

    Paint paint_10_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.004960317;
    paint_10_stroke.color = Color(0xff999999).withOpacity(1.0);
    paint_10_stroke.strokeCap = StrokeCap.round;
    paint_10_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawLine(Offset(size.width * 55, size.height * 55),
        Offset(size.width * 0.007168651, size.height * 0.07302162), paint_10_stroke);

    Paint paint_11_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.004960317;
    paint_11_stroke.color = Color(0xff999999).withOpacity(1.0);
    paint_11_stroke.strokeCap = StrokeCap.round;
    paint_11_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawLine(Offset(size.width * 55, size.height * 55),
        Offset(size.width * 0.005553571, size.height * 0.05419459), paint_11_stroke);

    Path path_12 = Path();
    path_12.moveTo(size.width * 0.05202778, size.height * 0.1626108);
    path_12.lineTo(size.width * 0.05202778, size.height * 0.1489514);
    path_12.arcToPoint(Offset(size.width * 0.04199802, size.height * 0.1216216),
        radius: Radius.elliptical(size.width * 0.01003175, size.height * 0.02732973),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_12.lineTo(size.width * 0.02193651, size.height * 0.1216216);
    path_12.arcToPoint(Offset(size.width * 0.01190476, size.height * 0.1489514),
        radius: Radius.elliptical(size.width * 0.01003175, size.height * 0.02732973),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_12.lineTo(size.width * 0.01190476, size.height * 0.1626162);

    Paint paint_12_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.004960317;
    paint_12_stroke.color = Color(0xff999999).withOpacity(1.0);
    paint_12_stroke.strokeCap = StrokeCap.round;
    paint_12_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_12, paint_12_stroke);

    Path path_13 = Path();
    path_13.moveTo(size.width * 0.04387103, size.height * 0.05165405);
    path_13.arcToPoint(Offset(size.width * 0.03384127, size.height * 0.02432432),
        radius: Radius.elliptical(size.width * 0.01003175, size.height * 0.02732973),
        rotation: 0,
        largeArc: true,
        clockwise: true);
    path_13.arcToPoint(Offset(size.width * 0.04387103, size.height * 0.05165405),
        radius: Radius.elliptical(size.width * 0.01003175, size.height * 0.02732973),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_13.close();

    Paint paint_13_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.004960317;
    paint_13_stroke.color = Color(0xff999999).withOpacity(1.0);
    paint_13_stroke.strokeCap = StrokeCap.round;
    paint_13_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_13, paint_13_stroke);

    Path path_14 = Path();
    path_14.moveTo(size.width * 0.1874345, size.height * 2.625946);
    path_14.lineTo(size.width * 0.1639325, size.height * 2.625946);
    path_14.arcToPoint(Offset(size.width * 0.1589266, size.height * 2.630811),
        radius: Radius.elliptical(size.width * 0.007924603, size.height * 0.02158919),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_14.lineTo(size.width * 0.1522956, size.height * 2.645535);
    path_14.lineTo(size.width * 0.1522956, size.height * 2.631211);
    path_14.arcToPoint(Offset(size.width * 0.1503671, size.height * 2.625962),
        radius: Radius.elliptical(size.width * 0.001926587, size.height * 0.005248649),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_14.lineTo(size.width * 0.1487698, size.height * 2.625962);
    path_14.arcToPoint(Offset(size.width * 0.1430159, size.height * 2.610286),
        radius: Radius.elliptical(size.width * 0.005753968, size.height * 0.01567568),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_14.lineTo(size.width * 0.1430159, size.height * 2.547638);
    path_14.arcToPoint(Offset(size.width * 0.1487698, size.height * 2.531962),
        radius: Radius.elliptical(size.width * 0.005753968, size.height * 0.01567568),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_14.lineTo(size.width * 0.1874345, size.height * 2.531962);
    path_14.arcToPoint(Offset(size.width * 0.1931885, size.height * 2.547638),
        radius: Radius.elliptical(size.width * 0.005753968, size.height * 0.01567568),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_14.lineTo(size.width * 0.1931885, size.height * 2.610270);
    path_14.arcToPoint(Offset(size.width * 0.1874345, size.height * 2.625946),
        radius: Radius.elliptical(size.width * 0.005753968, size.height * 0.01567568),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_14.close();

    Paint paint_14_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.004960317;
    paint_14_stroke.color = Color(0xff999999).withOpacity(1.0);
    paint_14_stroke.strokeCap = StrokeCap.round;
    canvas.drawPath(path_14, paint_14_stroke);

    Paint paint_15_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.004960317;
    paint_15_stroke.color = Color(0xff999999).withOpacity(1.0);
    paint_15_stroke.strokeCap = StrokeCap.round;
    canvas.drawLine(
        Offset(size.width * 0.03076190, size.height * 55), Offset(size.width * 55, size.height * 55), paint_15_stroke);

    Paint paint_16_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.004960317;
    paint_16_stroke.color = Color(0xff999999).withOpacity(1.0);
    paint_16_stroke.strokeCap = StrokeCap.round;
    canvas.drawLine(
        Offset(size.width * 0.03076190, size.height * 55), Offset(size.width * 55, size.height * 55), paint_16_stroke);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
