class Announcement {
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

  Announcement({
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

  factory Announcement.fromJson(Map<String, dynamic> json) {
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
    return Announcement(
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
