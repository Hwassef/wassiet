import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:wassiet/app/features/announcement_details/data/models/announcement_details_model.dart';
import 'package:wassiet/app/features/announcement_details/domain/entity/announcement_details.dart';

abstract class AnnouncementDetailsRemoteDateSource {
  Future<AnnouncementDetails> getAnnouncemnetDetails();
}

class AnnouncementDetailsRemoteDataSourceImpl implements AnnouncementDetailsRemoteDateSource {
  @override
  Future<AnnouncementDetails> getAnnouncemnetDetails() async {
    final response = await rootBundle.loadString('assets/fake_data/announcements_details.json');
    return AnnouncementDetailsModel.fromJson(jsonDecode(response));
  }
}
