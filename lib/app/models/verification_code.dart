import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
// import 'package:wassiet/config/routes/app_router.gr.dart';

part 'verification_code.g.dart';

class VerificationCode = VerificationCodeBase with _$VerificationCode;

abstract class VerificationCodeBase with Store {
  @observable
  String? verifictionCode;
  @observable
  bool _isResendVerificationCodeClicked = false;
  @observable
  Timer? _countDownTimer;
  @observable
  int _reduceSecondsBy = 1;
  @observable
  Duration countDownDuration = const Duration(minutes: 1, seconds: 00);
  @computed
  int get reduceSecondsBy => _reduceSecondsBy;
  @computed
  Timer? get countDownTimer => _countDownTimer;
  @computed
  bool get isButtonEnabled => verifictionCode != null && verifictionCode?.length == 6;
  @computed
  bool get isResendVerificationCodeClicked => _isResendVerificationCodeClicked;
  @action
  void handleVerificationCodeButtonOnclick(
      {required BuildContext context, required String phoneNumber, required String verificationCode}) {
    if (isButtonEnabled) {
      FocusScope.of(context).unfocus();
      verifyPhoneNumber(verificationCode: verificationCode, phoneNumber: phoneNumber);
    }
  }

  @action
  void startTimer() {
    _countDownTimer = Timer.periodic(const Duration(seconds: 1), (_) => setCountDown());
  }

  void stopTimer() {
    countDownTimer?.cancel();
  }

  void resetTimer() {
    stopTimer();
    countDownDuration = const Duration(minutes: 1, seconds: 00);
  }

  void setCountDown() {
    var seconds = countDownDuration.inSeconds - reduceSecondsBy;
    if (seconds < 0) {
      countDownTimer?.cancel();
      _isResendVerificationCodeClicked = false;
    } else {
      countDownDuration = Duration(seconds: seconds);
    }
  }

  @action
  void handleSendAgainOnTap() {
    _isResendVerificationCodeClicked = true;
    resetTimer();
    startTimer();
  }

  FirebaseAuth auth = FirebaseAuth.instance;

  void verifyPhoneNumber({required String phoneNumber, required String verificationCode}) {
    auth.verifyPhoneNumber(
        codeAutoRetrievalTimeout: (String verificationId) {},
        verificationFailed: (FirebaseAuthException e) {},
        verificationCompleted: (PhoneAuthCredential phoneAuthCredential) {},
        phoneNumber: phoneNumber,
        codeSent: (String verificationId, int? resendToken) async {
          ConfirmationResult confirmationResult = await auth.signInWithPhoneNumber(phoneNumber);
          UserCredential userCredential = await confirmationResult.confirm(verificationCode);
        });
  }
}
