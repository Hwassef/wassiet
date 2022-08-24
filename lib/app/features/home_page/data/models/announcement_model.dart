import 'package:wassiet/app/features/get_all_announcements/domain/entities/announcement.dart';

class AnnouncementModel extends Announcement {
  const AnnouncementModel({
    required super.announcmentImage,
    required super.announcementName,
    required super.announcementDescription,
    required super.announcementType,
    required super.announcementPostedAt,
    required super.announcementPrice,
    required super.announcementPriceUnit,
    required super.announcementRate,
    required super.announcementNumberOfRates,
    required super.announcementPostedByUserImage,
  });
  factory AnnouncementModel.fromJson(Map<String, dynamic> json) {
    final announcementImage = json['announcement_image'] as String;
    final announcementName = json['announcement_name'] as String;
    final announcementDescription = json['announcement_description'] as String;
    final announcementType = json['announcement_type'] as String;
    final announcementPostedAt = json['announcement_posted_at'] as String;
    final announcementPrice = json['announcement_price'] as double;
    final announcementPriceUnit = json['announcement_price_unit'] as String;
    final announcementRate = json['announcement_rate'] as double;
    final announcementNumberOfRates = json['announcement_number_of_rates'] as int;
    final announcementPostedByUserImage = json['anouncement_posted_by_user_image'] as String;
    return AnnouncementModel(
      announcmentImage: announcementImage,
      announcementName: announcementName,
      announcementDescription: announcementDescription,
      announcementType: announcementType,
      announcementPostedAt: announcementPostedAt,
      announcementPrice: announcementPrice,
      announcementPriceUnit: announcementPriceUnit,
      announcementRate: announcementRate,
      announcementNumberOfRates: announcementNumberOfRates,
      announcementPostedByUserImage: announcementPostedByUserImage,
    );
  }
}
