import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:mobx/mobx.dart';
import 'package:wassiet/app/domain/entities/currency.dart';
import 'package:wassiet/app/domain/entities/property_type.dart';
import 'package:wassiet/app/domain/entities/purpose_of_announcement.dart';
part 'create_announcement_second_step_vm.g.dart';

class CreateAnnouncementSecondStepVM = CreateAnnouncementSecondStep with _$CreateAnnouncementSecondStepVM;

abstract class CreateAnnouncementSecondStep with Store {
  @observable
  List<PurposeOfAnnouncement> purposes = <PurposeOfAnnouncement>[];
  @observable
  String? purposeOfAnnouncementName;
  @observable
  List<PropertyType> properties = <PropertyType>[];
  @observable
  String? propertyTypeName;

  @action
  String selectedPurposeOfAnnouncementName(String name) => purposeOfAnnouncementName = name;
  @action
  String selectedPropertyTypeName(String name) => propertyTypeName = name;
  @observable
  List<Currency> currencies = <Currency>[];
  @observable
  String? currencyName;
  @action
  String selectedCurrencyName(String name) => currencyName = name;

  @action
  Future<void> getAllPurposes() async {
    final response = await rootBundle.loadString('assets/fake_data/purpose_of_announcement.json');
    final json = jsonDecode(response) as List;
    purposes = json.map((object) => PurposeOfAnnouncement.fromJson(object)).toList();
  }

  @action
  Future<void> getAllPropertyTypes() async {
    final response = await rootBundle.loadString('assets/fake_data/property_type.json');
    final json = jsonDecode(response) as List;
    properties = json.map((object) => PropertyType.fromJson(object)).toList();
  }

  @action
  Future<void> getAllCurrencies() async {
    final response = await rootBundle.loadString('assets/fake_data/currencies.json');
    final json = jsonDecode(response) as List;
    currencies = json.map((object) => Currency.fromJson(object)).toList();
  }
}
