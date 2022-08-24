import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:wassiet/app/features/create_announcement_second_step/data/models/currency_model.dart';
import 'package:wassiet/app/features/create_announcement_second_step/data/models/property_type_model.dart';
import 'package:wassiet/app/features/create_announcement_second_step/data/models/purpose_of_announcement_model.dart';
import 'package:wassiet/app/features/create_announcement_second_step/domain/entities/currency.dart';
import 'package:wassiet/app/features/create_announcement_second_step/domain/entities/property_type.dart';
import 'package:wassiet/app/features/create_announcement_second_step/domain/entities/purpose_of_announcement.dart';

abstract class CreateAnnouncementSecondStepRemoteDataSource {
  Future<List<PurposeOfAnnouncement>> getAllPurposesOfAnnouncement();
  Future<List<PropertyType>> getAllPropertyTypes();
  Future<List<Currency>> getAllCurrencies();
}

class CreateAnnouncementSecondStepRemoteDataSourceImpl implements CreateAnnouncementSecondStepRemoteDataSource {
  @override
  Future<List<PurposeOfAnnouncement>> getAllPurposesOfAnnouncement() async {
    final response = await rootBundle.loadString('assets/fake_data/purpose_of_announcement.json');
    final json = jsonDecode(response) as List;
    return json.map((object) => PurposeOfAnnouncementModel.fromJson(object)).toList();
  }

  @override
  Future<List<PropertyType>> getAllPropertyTypes() async {
    final response = await rootBundle.loadString('assets/fake_data/property_type.json');
    final json = jsonDecode(response) as List;
    return json.map((object) => PropertyTypeModel.fromJson(object)).toList();
  }

  @override
  Future<List<Currency>> getAllCurrencies() async {
    final response = await rootBundle.loadString('assets/fake_data/currencies.json');
    final json = jsonDecode(response) as List;
    return json.map((object) => CurrencyModel.fromJson(object)).toList();
  }
}
