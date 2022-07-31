import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';
import 'package:wassiet/config/config.dart';
import 'package:wassiet/generated/l10n.dart';

class VerificationCodePage extends StatefulWidget {
  const VerificationCodePage({Key? key}) : super(key: key);

  @override
  State<VerificationCodePage> createState() => _VerificationCodePageState();
}

class _VerificationCodePageState extends State<VerificationCodePage> {
  final TextEditingController testController = TextEditingController();
  final FocusNode verificationCodeFocusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
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
                      height: 52.0,
                    ),
                    Text(
                      S.current.confirmationCodeHasBeenSentToYourPhoneNumber,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text("0354664546546"),
                    const SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Container(
                        width: 300,
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                          color: AppColors.greyColor,
                        ),
                        child: Focus(
                          focusNode: verificationCodeFocusNode,
                          child: VerificationCode(
                            fillColor: AppColors.transparentColor,
                            textStyle: TextStyle(fontSize: 20.0, color: Colors.red[900]),
                            keyboardType: TextInputType.number,
                            length: 4,
                            cursorColor: Colors.blue,
                            onCompleted: (String value) {
                              setState(() {});
                            },
                            onEditing: (bool value) {
                              setState(() {});
                            },
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(S.current.sendVerificationCodeIn),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(S.current.continueText),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
