import 'package:equatable/equatable.dart';

class Announcement extends Equatable {
  final String announcmentImage;
  final String announcementName;
  final String announcementDescription;
  final String announcementType;
  final String announcementPostedAt;
  final double announcementPrice;
  final String announcementPriceUnit;
  final double announcementRate;
  final int announcementNumberOfRates;
  final String announcementPostedByUserImage;

  const Announcement({
    required this.announcmentImage,
    required this.announcementName,
    required this.announcementDescription,
    required this.announcementType,
    required this.announcementPostedAt,
    required this.announcementPrice,
    required this.announcementPriceUnit,
    required this.announcementRate,
    required this.announcementNumberOfRates,
    required this.announcementPostedByUserImage,
  });

  @override
  List<Object?> get props => [
        announcmentImage,
        announcementName,
        announcementDescription,
        announcementType,
        announcementPostedAt,
        announcementPrice,
        announcementPriceUnit,
        announcementRate,
        announcementNumberOfRates,
        announcementPostedByUserImage,
      ];
}
