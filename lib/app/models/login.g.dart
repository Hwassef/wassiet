// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$Login on LoginBase, Store {
  Computed<bool>? _$isPhoneNumberValidComputed;

  @override
  bool get isPhoneNumberValid => (_$isPhoneNumberValidComputed ??=
          Computed<bool>(() => super.isPhoneNumberValid,
              name: 'LoginBase.isPhoneNumberValid'))
      .value;

  late final _$phoneNumberAtom =
      Atom(name: 'LoginBase.phoneNumber', context: context);

  @override
  String? get phoneNumber {
    _$phoneNumberAtom.reportRead();
    return super.phoneNumber;
  }

  @override
  set phoneNumber(String? value) {
    _$phoneNumberAtom.reportWrite(value, super.phoneNumber, () {
      super.phoneNumber = value;
    });
  }

  late final _$verificationIddAtom =
      Atom(name: 'LoginBase.verificationIdd', context: context);

  @override
  String? get verificationIdd {
    _$verificationIddAtom.reportRead();
    return super.verificationIdd;
  }

  @override
  set verificationIdd(String? value) {
    _$verificationIddAtom.reportWrite(value, super.verificationIdd, () {
      super.verificationIdd = value;
    });
  }

  late final _$LoginBaseActionController =
      ActionController(name: 'LoginBase', context: context);

  @override
  void handleLoginButtonOnclick({required BuildContext context}) {
    final _$actionInfo = _$LoginBaseActionController.startAction(
        name: 'LoginBase.handleLoginButtonOnclick');
    try {
      return super.handleLoginButtonOnclick(context: context);
    } finally {
      _$LoginBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
phoneNumber: ${phoneNumber},
verificationIdd: ${verificationIdd},
isPhoneNumberValid: ${isPhoneNumberValid}
    ''';
  }
}
