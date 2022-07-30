import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:wassiet/config/config.dart';
import 'package:wassiet/generated/l10n.dart';
import 'package:wassiet/widgets/widgets.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);
  final TextEditingController testController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(S.current.yourPhoneNumber),
                        IconButton(
                          onPressed: () => context.popRoute(),
                          icon: const Icon(
                            Icons.close,
                            color: AppColors.darkBlueColor,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 56.0,
                    ),
                    Text(
                      S.current.yourPhoneNumber,
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    InputTextField(
                      hintText: S.current.phoneNumber,
                      controller: testController,
                      keyboardType: TextInputType.phone,
                      label: S.current.phoneNumber,
                      prefixIconConstraints: const BoxConstraints(
                        minHeight: 14,
                        minWidth: 22,
                      ),
                      prefixIcon: Image.asset(
                        AppImages.mobileIcon,
                        width: 14,
                        height: 22,
                      ),
                    ),
                    const SizedBox(
                      height: 24.0,
                    ),
                    Row(
                      children: [
                        const Icon(Icons.info_outline),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Text(
                            S.current.weUseYourPhoneNumberOnlyToLocateYourIdentityItWillNotBeShared,
                            style: Theme.of(context).textTheme.bodyText2?.copyWith(
                                  height: 1.4,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: Text.rich(
                  TextSpan(
                    children: <InlineSpan>[
                      WidgetSpan(
                        child: Text(
                          S.current.byClickingOnThisButtonYouAccept,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      WidgetSpan(
                        child: Text(
                          ' ${S.current.termsOfService}',
                          textAlign: TextAlign.center,
                        ),
                      ),
                      WidgetSpan(
                        child: Text(
                          ' ${S.current.ourOwn}',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 21),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  S.current.continueText,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
