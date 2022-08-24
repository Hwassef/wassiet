import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:wassiet/app/domain/entities/language.dart';
import 'package:wassiet/app/models/change_app_language_vm.dart';
import 'package:wassiet/app/models/radio_button.dart';
import 'package:wassiet/config/config.dart';
import 'package:wassiet/generated/l10n.dart';
import 'package:wassiet/utils/utils.dart';
import 'package:wassiet/widgets/widgets.dart';

class ChangeAppLanguagePage extends StatefulWidget {
  const ChangeAppLanguagePage({Key? key}) : super(key: key);

  @override
  State<ChangeAppLanguagePage> createState() => _ChangeAppLanguagePageState();
}

final RadioButton radioButtonBase = RadioButton();
final ChangeAppLanguageVM changeAppLanguageVM = ChangeAppLanguageVM();

class _ChangeAppLanguagePageState extends State<ChangeAppLanguagePage> {
  @override
  void initState() {
    changeAppLanguageVM.getAllLanguages();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 24.0),
          child: Column(
            children: <Widget>[
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
              Observer(
                builder: (_) => ListView.builder(
                    shrinkWrap: true,
                    itemCount: changeAppLanguageVM.languages.length,
                    itemBuilder: (context, index) {
                      Language currentLanguage = changeAppLanguageVM.languages[index];
                      return Row(
                        children: [
                          Observer(
                            builder: (_) => GestureDetector(
                              onTap: () => radioButtonBase.changeCurrentSelectedItem(name: currentLanguage.name),
                              child: Container(
                                width: 32.0,
                                height: 32.0,
                                padding: EdgeInsets.all(
                                    radioButtonBase.selectedItemName == currentLanguage.name ? 8.5 : 4.5),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: radioButtonBase.selectedItemName == currentLanguage.name
                                      ? AppColors.darkCyanColor
                                      : AppColors.inactiveGreyColorLight,
                                ),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          CircledFlag(flag: getCountryFlag(countryCode: currentLanguage.languageCode), radius: 15.0),
                          Text(
                            currentLanguage.name,
                            style: Theme.of(context).textTheme.bodyText1?.copyWith(letterSpacing: 0.4),
                          )
                        ],
                      );
                    }),
              ),
              const Spacer(),
              Align(
                alignment: Alignment.bottomCenter,
                child: GradientElevatedButton(
                  isButtonEnabled: true,
                  onPressed: () {},
                  child: Text(S.current.confirm),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
