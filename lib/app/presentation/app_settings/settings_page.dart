import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:wassiet/config/config.dart';
import 'package:wassiet/config/routes/app_router.gr.dart';
import 'package:wassiet/generated/l10n.dart';
import 'package:wassiet/widgets/widgets.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 24.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CustomBackButton(),
                      Text(
                        S.of(context).settings,
                        style: Theme.of(context).textTheme.headline1,
                      ),
                    ],
                  ),
                  const UnderlinedText(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppSizes.size24),
              child: Wrap(
                runSpacing: 4,
                children: [
                  CustomListTile(
                    onTap: () => context.pushRoute(const ChangeAppLanguagePageRoute()),
                    content: S.of(context).changeLanguage,
                  ),
                  CustomListTile(
                    onTap: () => context.pushRoute(ContactUsPageRoute()),
                    content: S.of(context).contactUs,
                  ),
                  CustomListTile(
                    onTap: () => context.pushRoute(const UsingTermsPageRoute()),
                    content: S.of(context).termsOfService,
                  ),
                  CustomListTile(
                    onTap: () => context.pushRoute(const AboutAppPageRoute()),
                    content: S.of(context).aboutApp,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
