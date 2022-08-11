import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';
import 'package:wassiet/config/routes/app_router.gr.dart';
part 'login.g.dart';

class Login = LoginBase with _$Login;

abstract class LoginBase with Store {
  @observable
  String? phoneNumber;
  @computed
  bool get isPhoneNumberValid => phoneNumber != null && phoneNumber?.length == 8;
  @action
  void handleLoginButtonOnclick({required BuildContext context}) {
    if (isPhoneNumberValid) {
      verifyPhone();
      FocusScope.of(context).unfocus();
      context.pushRoute(VerificationCodePageRoute(phoneNumber: phoneNumber ?? '_'));
    }
  }

  FirebaseAuth auth = FirebaseAuth.instance;
  void verifyPhone() async {
    await auth.verifyPhoneNumber(
      timeout: const Duration(minutes: 2),
      phoneNumber: '+216$phoneNumber',
      verificationCompleted: (PhoneAuthCredential credential) async {
        await auth.signInWithCredential(credential).then((value) {});
      },
      verificationFailed: (FirebaseAuthException e) {},
      codeSent: (String verificationId, int? resendToken) {},
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
  }
}
