import 'package:wassiet/app/features/create_announcement_second_step/domain/entities/purpose_of_announcement.dart';

class PurposeOfAnnouncementModel extends PurposeOfAnnouncement {
  const PurposeOfAnnouncementModel({required super.name});
  factory PurposeOfAnnouncementModel.fromJson(Map<String, dynamic> json) {
    final name = json['name'] as String;
    return PurposeOfAnnouncementModel(name: name);
  }
}
