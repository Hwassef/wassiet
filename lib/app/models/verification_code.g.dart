// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verification_code.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$VerificationCode on VerificationCodeBase, Store {
  Computed<int>? _$reduceSecondsByComputed;

  @override
  int get reduceSecondsBy =>
      (_$reduceSecondsByComputed ??= Computed<int>(() => super.reduceSecondsBy,
              name: 'VerificationCodeBase.reduceSecondsBy'))
          .value;
  Computed<Timer?>? _$countDownTimerComputed;

  @override
  Timer? get countDownTimer =>
      (_$countDownTimerComputed ??= Computed<Timer?>(() => super.countDownTimer,
              name: 'VerificationCodeBase.countDownTimer'))
          .value;
  Computed<bool>? _$isButtonEnabledComputed;

  @override
  bool get isButtonEnabled =>
      (_$isButtonEnabledComputed ??= Computed<bool>(() => super.isButtonEnabled,
              name: 'VerificationCodeBase.isButtonEnabled'))
          .value;
  Computed<bool>? _$isResendVerificationCodeClickedComputed;

  @override
  bool get isResendVerificationCodeClicked =>
      (_$isResendVerificationCodeClickedComputed ??= Computed<bool>(
              () => super.isResendVerificationCodeClicked,
              name: 'VerificationCodeBase.isResendVerificationCodeClicked'))
          .value;

  late final _$verifictionCodeAtom =
      Atom(name: 'VerificationCodeBase.verifictionCode', context: context);

  @override
  String? get verifictionCode {
    _$verifictionCodeAtom.reportRead();
    return super.verifictionCode;
  }

  @override
  set verifictionCode(String? value) {
    _$verifictionCodeAtom.reportWrite(value, super.verifictionCode, () {
      super.verifictionCode = value;
    });
  }

  late final _$_isResendVerificationCodeClickedAtom = Atom(
      name: 'VerificationCodeBase._isResendVerificationCodeClicked',
      context: context);

  @override
  bool get _isResendVerificationCodeClicked {
    _$_isResendVerificationCodeClickedAtom.reportRead();
    return super._isResendVerificationCodeClicked;
  }

  @override
  set _isResendVerificationCodeClicked(bool value) {
    _$_isResendVerificationCodeClickedAtom
        .reportWrite(value, super._isResendVerificationCodeClicked, () {
      super._isResendVerificationCodeClicked = value;
    });
  }

  late final _$_countDownTimerAtom =
      Atom(name: 'VerificationCodeBase._countDownTimer', context: context);

  @override
  Timer? get _countDownTimer {
    _$_countDownTimerAtom.reportRead();
    return super._countDownTimer;
  }

  @override
  set _countDownTimer(Timer? value) {
    _$_countDownTimerAtom.reportWrite(value, super._countDownTimer, () {
      super._countDownTimer = value;
    });
  }

  late final _$_reduceSecondsByAtom =
      Atom(name: 'VerificationCodeBase._reduceSecondsBy', context: context);

  @override
  int get _reduceSecondsBy {
    _$_reduceSecondsByAtom.reportRead();
    return super._reduceSecondsBy;
  }

  @override
  set _reduceSecondsBy(int value) {
    _$_reduceSecondsByAtom.reportWrite(value, super._reduceSecondsBy, () {
      super._reduceSecondsBy = value;
    });
  }

  late final _$countDownDurationAtom =
      Atom(name: 'VerificationCodeBase.countDownDuration', context: context);

  @override
  Duration get countDownDuration {
    _$countDownDurationAtom.reportRead();
    return super.countDownDuration;
  }

  @override
  set countDownDuration(Duration value) {
    _$countDownDurationAtom.reportWrite(value, super.countDownDuration, () {
      super.countDownDuration = value;
    });
  }

  late final _$VerificationCodeBaseActionController =
      ActionController(name: 'VerificationCodeBase', context: context);

  @override
  void handleVerificationCodeButtonOnclick({required BuildContext context}) {
    final _$actionInfo = _$VerificationCodeBaseActionController.startAction(
        name: 'VerificationCodeBase.handleVerificationCodeButtonOnclick');
    try {
      return super.handleVerificationCodeButtonOnclick(context: context);
    } finally {
      _$VerificationCodeBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void startTimer() {
    final _$actionInfo = _$VerificationCodeBaseActionController.startAction(
        name: 'VerificationCodeBase.startTimer');
    try {
      return super.startTimer();
    } finally {
      _$VerificationCodeBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void handleSendAgainOnTap() {
    final _$actionInfo = _$VerificationCodeBaseActionController.startAction(
        name: 'VerificationCodeBase.handleSendAgainOnTap');
    try {
      return super.handleSendAgainOnTap();
    } finally {
      _$VerificationCodeBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
verifictionCode: ${verifictionCode},
countDownDuration: ${countDownDuration},
reduceSecondsBy: ${reduceSecondsBy},
countDownTimer: ${countDownTimer},
isButtonEnabled: ${isButtonEnabled},
isResendVerificationCodeClicked: ${isResendVerificationCodeClicked}
    ''';
  }
}
