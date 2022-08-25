import 'package:wassiet/app/features/announcement_details/domain/entity/announcement_raterrater.dart';
import 'package:wassiet/app/features/announcement_details/domain/entity/announcement_rating_and_comments.dart';

class AnnouncementRatingAndCommentsModel extends AnnouncementRatingAndComments {
  const AnnouncementRatingAndCommentsModel({
    required super.announcementRate,
    required super.announcementNumberOfRates,
    required super.raters,
    required super.announcementPostedBy,
  });
  factory AnnouncementRatingAndCommentsModel.fromJson(Map<String, dynamic> json) {
    final announcementRate = json['announcement_rate'] as double;
    final announcementNumberOfRates = json['announcement_number_of_rates'] as int;
    final raters = json['raters'] as List<AnnouncementRater>;
    final announcementPostedBy = json['announcement_posted_by'] as String;
    return AnnouncementRatingAndCommentsModel(
      announcementRate: announcementRate,
      announcementNumberOfRates: announcementNumberOfRates,
      raters: raters,
      announcementPostedBy: announcementPostedBy,
    );
  }
}
