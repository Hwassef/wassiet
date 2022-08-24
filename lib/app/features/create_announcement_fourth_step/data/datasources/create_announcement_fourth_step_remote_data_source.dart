import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:wassiet/app/features/create_announcement_fourth_step/data/models/available_item_model.dart';
import 'package:wassiet/app/features/create_announcement_fourth_step/domain/entities/available_item.dart';

abstract class CreateAnnouncementFourthStepRemoteDataSource {
  Future<List<AvailableItem>> getAllAvailableItems();
}

class CreateAnnouncementFourthStepRemoteDataSourceImpl implements CreateAnnouncementFourthStepRemoteDataSource {
  @override
  Future<List<AvailableItem>> getAllAvailableItems() async {
    final response = await rootBundle.loadString('assets/fake_data/available.json');
    final json = jsonDecode(response) as List;
    return json.map((object) => AvaialableItemModel.fromJson(object)).toList();
  }
}
