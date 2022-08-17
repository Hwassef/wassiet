import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:wassiet/app/models/verification_code.dart';
import 'package:wassiet/config/config.dart';
import 'package:wassiet/generated/l10n.dart';
import 'package:wassiet/widgets/gradient_elevated_button.dart';

class VerificationCodePage extends StatefulWidget {
  const VerificationCodePage({
    Key? key,
    required this.phoneNumber,
  }) : super(key: key);
  final String phoneNumber;
  @override
  State<VerificationCodePage> createState() => _VerificationCodePageState();
}

class _VerificationCodePageState extends State<VerificationCodePage> {
  final TextEditingController verificationCodeTextEditingController = TextEditingController();
  final FocusNode verificationCodeFocusNode = FocusNode();
  final VerificationCode _verificationCodeBase = VerificationCode();

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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                      52.h.verticalSpace,
                      Text(
                        S.current.confirmationCodeHasBeenSentToYourPhoneNumber,
                        style: Theme.of(context).textTheme.headline2,
                      ),
                      20.h.verticalSpace,
                      Text(
                        widget.phoneNumber,
                        style: Theme.of(context).textTheme.bodyText1?.copyWith(letterSpacing: 1),
                      ),
                      20.h.verticalSpace,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            S.current.verificationCode,
                            style: Theme.of(context).textTheme.subtitle2?.copyWith(
                                  fontSize: 13,
                                ),
                          ),
                          Center(
                            child: Container(
                              width: double.infinity,
                              alignment: Alignment.center,
                              decoration: const BoxDecoration(
                                color: AppColors.greyColor,
                                borderRadius: AppConstants.largeBorderRadius,
                              ),
                              child: Focus(
                                focusNode: verificationCodeFocusNode,
                                child: Observer(
                                  builder: (_) => Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                                    child: PinCodeTextField(
                                      textStyle: Theme.of(context).textTheme.subtitle2,
                                      appContext: context,
                                      length: 6,
                                      keyboardType: TextInputType.phone,
                                      onChanged: (String code) => _verificationCodeBase.verifictionCode = code,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      20.h.verticalSpace,
                      Observer(
                        builder: (_) => _verificationCodeBase.isResendVerificationCodeClicked
                            ? Text(
                                '${S.current.sendVerificationCodeIn} ${_verificationCodeBase.countDownDuration.inSeconds}',
                                style: Theme.of(context).textTheme.subtitle2?.copyWith(
                                      color: AppColors.blackColor,
                                      fontSize: 12,
                                    ),
                              )
                            : Row(
                                children: [
                                  Text(
                                    S.current.youHaventRecieveVerificationCode,
                                    style: Theme.of(context).textTheme.subtitle2?.copyWith(
                                          color: AppColors.blackColor,
                                          fontSize: 12,
                                        ),
                                  ),
                                  6.w.horizontalSpace,
                                  GestureDetector(
                                    onTap: () => _verificationCodeBase.handleSendAgainOnTap(),
                                    child: Text(
                                      S.current.sendAgain,
                                      style: Theme.of(context).textTheme.subtitle2?.copyWith(
                                            fontSize: 12,
                                          ),
                                    ),
                                  )
                                ],
                              ),
                      ),
                    ],
                  ),
                ),
                Observer(
                  builder: (_) => Padding(
                    padding: const EdgeInsets.only(bottom: 16.0),
                    child: GradientElevatedButton(
                      isButtonEnabled: _verificationCodeBase.isButtonEnabled,
                      onPressed: () => _verificationCodeBase.verifyPhoneNumber(
                        // context: context,
                        phoneNumber: '+216${widget.phoneNumber}',
                        verificationCode: _verificationCodeBase.verifictionCode ?? '',
                      ),
                      child: Text(S.current.continueText),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
