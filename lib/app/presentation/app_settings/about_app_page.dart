import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wassiet/config/config.dart';
import 'package:wassiet/generated/l10n.dart';
import 'package:wassiet/widgets/widgets.dart';

class AboutAppPage extends StatelessWidget {
  const AboutAppPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextTheme theme = Theme.of(context).textTheme;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const CustomBackButton(),
                  Text(
                    S.current.aboutApp,
                    style: theme.headline1,
                  ),
                ],
              ),
              const UnderlinedText(),
              const SizedBox(
                height: 80.0,
              ),
              Center(
                child: Stack(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: SvgPicture.asset(
                        AppImages.greyShapeImage,
                        color: AppColors.shapeGreyColor,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 60.0),
                      alignment: Alignment.center,
                      child: Image.asset(
                        AppImages.appLogo,
                        width: 110.0,
                        height: 92.0,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Text(
                  S.current.appNameInBothLanguages,
                  style: theme.subtitle2?.copyWith(fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
