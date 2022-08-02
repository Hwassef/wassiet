import 'package:auto_route/auto_route.dart';
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
      FocusScope.of(context).unfocus();
      context.pushRoute(VerificationCodePageRoute(phoneNumber: phoneNumber ?? '_'));
    }
  }
}
