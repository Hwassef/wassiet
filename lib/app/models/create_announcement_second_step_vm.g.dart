// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_announcement_second_step_vm.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CreateAnnouncementSecondStepVM on CreateAnnouncementSecondStep, Store {
  late final _$purposesAtom =
      Atom(name: 'CreateAnnouncementSecondStep.purposes', context: context);

  @override
  List<PurposeOfAnnouncement> get purposes {
    _$purposesAtom.reportRead();
    return super.purposes;
  }

  @override
  set purposes(List<PurposeOfAnnouncement> value) {
    _$purposesAtom.reportWrite(value, super.purposes, () {
      super.purposes = value;
    });
  }

  late final _$purposeOfAnnouncementNameAtom = Atom(
      name: 'CreateAnnouncementSecondStep.purposeOfAnnouncementName',
      context: context);

  @override
  String? get purposeOfAnnouncementName {
    _$purposeOfAnnouncementNameAtom.reportRead();
    return super.purposeOfAnnouncementName;
  }

  @override
  set purposeOfAnnouncementName(String? value) {
    _$purposeOfAnnouncementNameAtom
        .reportWrite(value, super.purposeOfAnnouncementName, () {
      super.purposeOfAnnouncementName = value;
    });
  }

  late final _$propertiesAtom =
      Atom(name: 'CreateAnnouncementSecondStep.properties', context: context);

  @override
  List<PropertyType> get properties {
    _$propertiesAtom.reportRead();
    return super.properties;
  }

  @override
  set properties(List<PropertyType> value) {
    _$propertiesAtom.reportWrite(value, super.properties, () {
      super.properties = value;
    });
  }

  late final _$propertyTypeNameAtom = Atom(
      name: 'CreateAnnouncementSecondStep.propertyTypeName', context: context);

  @override
  String? get propertyTypeName {
    _$propertyTypeNameAtom.reportRead();
    return super.propertyTypeName;
  }

  @override
  set propertyTypeName(String? value) {
    _$propertyTypeNameAtom.reportWrite(value, super.propertyTypeName, () {
      super.propertyTypeName = value;
    });
  }

  late final _$currenciesAtom =
      Atom(name: 'CreateAnnouncementSecondStep.currencies', context: context);

  @override
  List<Currency> get currencies {
    _$currenciesAtom.reportRead();
    return super.currencies;
  }

  @override
  set currencies(List<Currency> value) {
    _$currenciesAtom.reportWrite(value, super.currencies, () {
      super.currencies = value;
    });
  }

  late final _$currencyNameAtom =
      Atom(name: 'CreateAnnouncementSecondStep.currencyName', context: context);

  @override
  String? get currencyName {
    _$currencyNameAtom.reportRead();
    return super.currencyName;
  }

  @override
  set currencyName(String? value) {
    _$currencyNameAtom.reportWrite(value, super.currencyName, () {
      super.currencyName = value;
    });
  }

  late final _$getAllPurposesAsyncAction = AsyncAction(
      'CreateAnnouncementSecondStep.getAllPurposes',
      context: context);

  @override
  Future<void> getAllPurposes() {
    return _$getAllPurposesAsyncAction.run(() => super.getAllPurposes());
  }

  late final _$getAllPropertyTypesAsyncAction = AsyncAction(
      'CreateAnnouncementSecondStep.getAllPropertyTypes',
      context: context);

  @override
  Future<void> getAllPropertyTypes() {
    return _$getAllPropertyTypesAsyncAction
        .run(() => super.getAllPropertyTypes());
  }

  late final _$getAllCurrenciesAsyncAction = AsyncAction(
      'CreateAnnouncementSecondStep.getAllCurrencies',
      context: context);

  @override
  Future<void> getAllCurrencies() {
    return _$getAllCurrenciesAsyncAction.run(() => super.getAllCurrencies());
  }

  late final _$CreateAnnouncementSecondStepActionController =
      ActionController(name: 'CreateAnnouncementSecondStep', context: context);

  @override
  String selectedPurposeOfAnnouncementName(String name) {
    final _$actionInfo =
        _$CreateAnnouncementSecondStepActionController.startAction(
            name:
                'CreateAnnouncementSecondStep.selectedPurposeOfAnnouncementName');
    try {
      return super.selectedPurposeOfAnnouncementName(name);
    } finally {
      _$CreateAnnouncementSecondStepActionController.endAction(_$actionInfo);
    }
  }

  @override
  String selectedPropertyTypeName(String name) {
    final _$actionInfo =
        _$CreateAnnouncementSecondStepActionController.startAction(
            name: 'CreateAnnouncementSecondStep.selectedPropertyTypeName');
    try {
      return super.selectedPropertyTypeName(name);
    } finally {
      _$CreateAnnouncementSecondStepActionController.endAction(_$actionInfo);
    }
  }

  @override
  String selectedCurrencyName(String name) {
    final _$actionInfo = _$CreateAnnouncementSecondStepActionController
        .startAction(name: 'CreateAnnouncementSecondStep.selectedCurrencyName');
    try {
      return super.selectedCurrencyName(name);
    } finally {
      _$CreateAnnouncementSecondStepActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
purposes: ${purposes},
purposeOfAnnouncementName: ${purposeOfAnnouncementName},
properties: ${properties},
propertyTypeName: ${propertyTypeName},
currencies: ${currencies},
currencyName: ${currencyName}
    ''';
  }
}
