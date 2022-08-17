// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_announcement_first_step_vm.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CreateAnnouncementFirstStepVM on CreateAnnouncementFirstStep, Store {
  late final _$countryNameAtom =
      Atom(name: 'CreateAnnouncementFirstStep.countryName', context: context);

  @override
  String? get countryName {
    _$countryNameAtom.reportRead();
    return super.countryName;
  }

  @override
  set countryName(String? value) {
    _$countryNameAtom.reportWrite(value, super.countryName, () {
      super.countryName = value;
    });
  }

  late final _$regionNameAtom =
      Atom(name: 'CreateAnnouncementFirstStep.regionName', context: context);

  @override
  String? get regionName {
    _$regionNameAtom.reportRead();
    return super.regionName;
  }

  @override
  set regionName(String? value) {
    _$regionNameAtom.reportWrite(value, super.regionName, () {
      super.regionName = value;
    });
  }

  late final _$announcementTitleAtom = Atom(
      name: 'CreateAnnouncementFirstStep.announcementTitle', context: context);

  @override
  String? get announcementTitle {
    _$announcementTitleAtom.reportRead();
    return super.announcementTitle;
  }

  @override
  set announcementTitle(String? value) {
    _$announcementTitleAtom.reportWrite(value, super.announcementTitle, () {
      super.announcementTitle = value;
    });
  }

  late final _$isAnnouncementTitleValidAtom = Atom(
      name: 'CreateAnnouncementFirstStep.isAnnouncementTitleValid',
      context: context);

  @override
  bool get isAnnouncementTitleValid {
    _$isAnnouncementTitleValidAtom.reportRead();
    return super.isAnnouncementTitleValid;
  }

  @override
  set isAnnouncementTitleValid(bool value) {
    _$isAnnouncementTitleValidAtom
        .reportWrite(value, super.isAnnouncementTitleValid, () {
      super.isAnnouncementTitleValid = value;
    });
  }

  late final _$getAllRegionsAsyncAction = AsyncAction(
      'CreateAnnouncementFirstStep.getAllRegions',
      context: context);

  @override
  Future<void> getAllRegions({required String countryName}) {
    return _$getAllRegionsAsyncAction
        .run(() => super.getAllRegions(countryName: countryName));
  }

  late final _$CreateAnnouncementFirstStepActionController =
      ActionController(name: 'CreateAnnouncementFirstStep', context: context);

  @override
  String? validateAnnouncementTitle({required String title}) {
    final _$actionInfo =
        _$CreateAnnouncementFirstStepActionController.startAction(
            name: 'CreateAnnouncementFirstStep.validateAnnouncementTitle');
    try {
      return super.validateAnnouncementTitle(title: title);
    } finally {
      _$CreateAnnouncementFirstStepActionController.endAction(_$actionInfo);
    }
  }

  @override
  String selectedCountryName(String name) {
    final _$actionInfo = _$CreateAnnouncementFirstStepActionController
        .startAction(name: 'CreateAnnouncementFirstStep.selectedCountryName');
    try {
      return super.selectedCountryName(name);
    } finally {
      _$CreateAnnouncementFirstStepActionController.endAction(_$actionInfo);
    }
  }

  @override
  String selectedRegionName(String name) {
    final _$actionInfo = _$CreateAnnouncementFirstStepActionController
        .startAction(name: 'CreateAnnouncementFirstStep.selectedRegionName');
    try {
      return super.selectedRegionName(name);
    } finally {
      _$CreateAnnouncementFirstStepActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
countryName: ${countryName},
regionName: ${regionName},
announcementTitle: ${announcementTitle},
isAnnouncementTitleValid: ${isAnnouncementTitleValid}
    ''';
  }
}
