import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:wassiet/app/features/announcement_details/data/models/announcement_details_model.dart';
import 'package:wassiet/app/features/announcement_details/data/models/announcement_rating_and_comments_model.dart';
import 'package:wassiet/app/features/announcement_details/domain/entity/announcement_details.dart';
import 'package:wassiet/app/features/announcement_details/domain/entity/announcement_rating_and_comments.dart';

abstract class AnnouncementDetailsRemoteDataSource {
  Future<AnnouncementDetails> getAnnouncemnetDetails();
  Future<AnnouncementRatingAndComments> getAnnouncementRatingAndComments();
}

class AnnouncementDetailsRemoteDataSourceImpl implements AnnouncementDetailsRemoteDataSource {
  @override
  Future<AnnouncementDetails> getAnnouncemnetDetails() async {
    final response = await rootBundle.loadString('assets/fake_data/announcements_details.json');
    return AnnouncementDetailsModel.fromJson(jsonDecode(response));
  }

  @override
  Future<AnnouncementRatingAndComments> getAnnouncementRatingAndComments() async {
    final response = await rootBundle.loadString('assets/fake_data/announcement_rating_and_comments.json');
    return AnnouncementRatingAndCommentsModel.fromJson(jsonDecode(response));
  }
}
