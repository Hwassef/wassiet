import 'package:flutter/material.dart';
import 'package:wassiet/config/config.dart';
import 'package:wassiet/generated/l10n.dart';
import 'package:wassiet/utils/principal_functions.dart';
import 'package:wassiet/widgets/custom_radio_button.dart';
import 'package:wassiet/widgets/widgets.dart';

class ChangeAppLanguagePage extends StatefulWidget {
  const ChangeAppLanguagePage({Key? key}) : super(key: key);

  @override
  State<ChangeAppLanguagePage> createState() => _ChangeAppLanguagePageState();
}

enum RadioShit { A, B }

RadioShit? _character = RadioShit.A;

class _ChangeAppLanguagePageState extends State<ChangeAppLanguagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CustomBackButton(),
                      Text(
                        S.of(context).changeLanguage,
                        style: Theme.of(context).textTheme.headline1,
                      ),
                    ],
                  ),
                  const UnderlinedText(),
                  const SizedBox(
                    height: 32,
                  ),
                  Row(
                    children: [
                      const CustomRadioBtn(),
                      CircledFlag(flag: getCountryFlag(countryCode: 'SA'), radius: 15.0),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      const CustomRadioBtn(),
                      CircledFlag(flag: getCountryFlag(countryCode: 'TN'), radius: 15.0),
                    ],
                  ),
                ],
              ),
            ),
            Radio<RadioShit>(
              fillColor: MaterialStateProperty.resolveWith<Color?>((states) => AppColors.darkCyanColor),
              groupValue: _character,
              value: RadioShit.B,
              onChanged: (RadioShit? value) {
                setState(() {
                  _character = value;
                });
              },
            ),
            const Spacer(),
            Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(S.current.confirm),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
