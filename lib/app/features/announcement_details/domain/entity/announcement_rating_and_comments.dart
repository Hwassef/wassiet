import 'package:equatable/equatable.dart';

import 'package:wassiet/app/features/announcement_details/domain/entity/announcement_raterrater.dart';

class AnnouncementRatingAndComments extends Equatable {
  final double announcementRate;
  final int announcementNumberOfRates;
  final List<AnnouncementRater> raters;
  final String announcementPostedBy;
  const AnnouncementRatingAndComments({
    required this.announcementRate,
    required this.announcementNumberOfRates,
    required this.raters,
    required this.announcementPostedBy,
  });
  @override
  List<Object?> get props => [
        announcementRate,
        announcementNumberOfRates,
        raters,
        announcementPostedBy,
      ];
}
