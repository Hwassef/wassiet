import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wassiet/app/models/login.dart';
import 'package:wassiet/config/config.dart';
import 'package:wassiet/generated/l10n.dart';
import 'package:wassiet/utils/validators.dart';
import 'package:wassiet/widgets/widgets.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final Login _loginBase = Login();
  final TextEditingController phoneNumberTextEditingController = TextEditingController();
  FocusNode phoneNumberFocusNode = FocusNode();
  final GlobalKey<FormFieldState> _formKey = GlobalKey<FormFieldState>();
  @override
  Widget build(BuildContext context) {
    return KeyboardDismissOnTap(
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24.0,
              vertical: 24.0,
            ),
            child: Column(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            S.current.yourPhoneNumber,
                            style: Theme.of(context).textTheme.headline1,
                          ),
                          IconButton(
                            onPressed: () => context.popRoute(),
                            icon: const Icon(
                              Icons.close,
                              color: AppColors.darkBlueColor,
                            ),
                          ),
                        ],
                      ),
                      48.h.verticalSpace,
                      Form(
                        key: _formKey,
                        child: Observer(
                          builder: (_) => InputTextField(
                            autoValidateMode: AutovalidateMode.onUserInteraction,
                            hintText: S.current.phoneNumber,
                            controller: phoneNumberTextEditingController,
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
                            onChanged: (phone) => _loginBase.phoneNumber = phone,
                            validator: (phone) => Validators.validatePhoneNumber(phoneNumber: phone),
                            focusNode: phoneNumberFocusNode,
                          ),
                        ),
                      ),
                      24.0.h.verticalSpace,
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
                            style: Theme.of(context).textTheme.subtitle2?.copyWith(
                                  color: AppColors.blackColor,
                                  fontSize: 12,
                                ),
                          ),
                        ),
                        WidgetSpan(
                          child: Text(
                            ' ${S.current.ourOwn}',
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.subtitle2?.copyWith(
                                  color: AppColors.blackColor,
                                  fontSize: 12,
                                ),
                          ),
                        ),
                        WidgetSpan(
                          child: Text(
                            ' ${S.current.termsOfService}',
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.subtitle2?.copyWith(fontSize: 12),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                21.h.verticalSpace,
                Observer(
                  builder: (_) => GradientElevatedButton(
                    onPressed: () => _loginBase.handleLoginButtonOnclick(context: context),
                    isButtonEnabled: _loginBase.isPhoneNumberValid,
                    child: Text(
                      S.current.continueText,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
