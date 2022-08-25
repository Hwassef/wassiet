// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_my_informations.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$EditMyInformations on EditMyInformationsBase, Store {
  Computed<bool>? _$isFormValidComputed;

  @override
  bool get isFormValid =>
      (_$isFormValidComputed ??= Computed<bool>(() => super.isFormValid,
              name: 'EditMyInformationsBase.isFormValid'))
          .value;
  Computed<bool>? _$isSearchWordNullOrEmptyComputed;

  @override
  bool get isSearchWordNullOrEmpty => (_$isSearchWordNullOrEmptyComputed ??=
          Computed<bool>(() => super.isSearchWordNullOrEmpty,
              name: 'EditMyInformationsBase.isSearchWordNullOrEmpty'))
      .value;

  late final _$imageFileAtom =
      Atom(name: 'EditMyInformationsBase.imageFile', context: context);

  @override
  File? get imageFile {
    _$imageFileAtom.reportRead();
    return super.imageFile;
  }

  @override
  set imageFile(File? value) {
    _$imageFileAtom.reportWrite(value, super.imageFile, () {
      super.imageFile = value;
    });
  }

  late final _$fullNameAtom =
      Atom(name: 'EditMyInformationsBase.fullName', context: context);

  @override
  String? get fullName {
    _$fullNameAtom.reportRead();
    return super.fullName;
  }

  @override
  set fullName(String? value) {
    _$fullNameAtom.reportWrite(value, super.fullName, () {
      super.fullName = value;
    });
  }

  late final _$emailAddressAtom =
      Atom(name: 'EditMyInformationsBase.emailAddress', context: context);

  @override
  String? get emailAddress {
    _$emailAddressAtom.reportRead();
    return super.emailAddress;
  }

  @override
  set emailAddress(String? value) {
    _$emailAddressAtom.reportWrite(value, super.emailAddress, () {
      super.emailAddress = value;
    });
  }

  late final _$phoneNumberAtom =
      Atom(name: 'EditMyInformationsBase.phoneNumber', context: context);

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

  late final _$isFullNameValidAtom =
      Atom(name: 'EditMyInformationsBase.isFullNameValid', context: context);

  @override
  bool get isFullNameValid {
    _$isFullNameValidAtom.reportRead();
    return super.isFullNameValid;
  }

  @override
  set isFullNameValid(bool value) {
    _$isFullNameValidAtom.reportWrite(value, super.isFullNameValid, () {
      super.isFullNameValid = value;
    });
  }

  late final _$isEmailValidAtom =
      Atom(name: 'EditMyInformationsBase.isEmailValid', context: context);

  @override
  bool get isEmailValid {
    _$isEmailValidAtom.reportRead();
    return super.isEmailValid;
  }

  @override
  set isEmailValid(bool value) {
    _$isEmailValidAtom.reportWrite(value, super.isEmailValid, () {
      super.isEmailValid = value;
    });
  }

  late final _$isPhoneNumberValidAtom =
      Atom(name: 'EditMyInformationsBase.isPhoneNumberValid', context: context);

  @override
  bool get isPhoneNumberValid {
    _$isPhoneNumberValidAtom.reportRead();
    return super.isPhoneNumberValid;
  }

  @override
  set isPhoneNumberValid(bool value) {
    _$isPhoneNumberValidAtom.reportWrite(value, super.isPhoneNumberValid, () {
      super.isPhoneNumberValid = value;
    });
  }

  late final _$searchWordAtom =
      Atom(name: 'EditMyInformationsBase.searchWord', context: context);

  @override
  String? get searchWord {
    _$searchWordAtom.reportRead();
    return super.searchWord;
  }

  @override
  set searchWord(String? value) {
    _$searchWordAtom.reportWrite(value, super.searchWord, () {
      super.searchWord = value;
    });
  }

  late final _$getAllCountriesAsyncAction =
      AsyncAction('EditMyInformationsBase.getAllCountries', context: context);

  @override
  Future<void> getAllCountries() {
    return _$getAllCountriesAsyncAction.run(() => super.getAllCountries());
  }

  late final _$searchForCountryAsyncAction =
      AsyncAction('EditMyInformationsBase.searchForCountry', context: context);

  @override
  Future<void> searchForCountry() {
    return _$searchForCountryAsyncAction.run(() => super.searchForCountry());
  }

  late final _$EditMyInformationsBaseActionController =
      ActionController(name: 'EditMyInformationsBase', context: context);

  @override
  void getImageFromImagePicker(File image) {
    final _$actionInfo = _$EditMyInformationsBaseActionController.startAction(
        name: 'EditMyInformationsBase.getImageFromImagePicker');
    try {
      return super.getImageFromImagePicker(image);
    } finally {
      _$EditMyInformationsBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String? validateFullName(String? fullName) {
    final _$actionInfo = _$EditMyInformationsBaseActionController.startAction(
        name: 'EditMyInformationsBase.validateFullName');
    try {
      return super.validateFullName(fullName);
    } finally {
      _$EditMyInformationsBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String? validateEmail(String? value) {
    final _$actionInfo = _$EditMyInformationsBaseActionController.startAction(
        name: 'EditMyInformationsBase.validateEmail');
    try {
      return super.validateEmail(value);
    } finally {
      _$EditMyInformationsBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String? validatePhoneNumber({required String? phoneNumber}) {
    final _$actionInfo = _$EditMyInformationsBaseActionController.startAction(
        name: 'EditMyInformationsBase.validatePhoneNumber');
    try {
      return super.validatePhoneNumber(phoneNumber: phoneNumber);
    } finally {
      _$EditMyInformationsBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
imageFile: ${imageFile},
fullName: ${fullName},
emailAddress: ${emailAddress},
phoneNumber: ${phoneNumber},
isFullNameValid: ${isFullNameValid},
isEmailValid: ${isEmailValid},
isPhoneNumberValid: ${isPhoneNumberValid},
searchWord: ${searchWord},
isFormValid: ${isFormValid},
isSearchWordNullOrEmpty: ${isSearchWordNullOrEmpty}
    ''';
  }
}
