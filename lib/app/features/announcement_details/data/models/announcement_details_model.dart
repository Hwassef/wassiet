import 'package:wassiet/app/features/announcement_details/domain/entity/announcement_details.dart';

class AnnouncementDetailsModel extends AnnouncementDetails {
  const AnnouncementDetailsModel({
    required super.price,
    required super.priceUnit,
    required super.announcementType,
    required super.announcementNumber,
    required super.announcemnetPostDate,
    required super.announcementTitle,
    required super.announcementRate,
    required super.announcementNumberOfRates,
    required super.announcementLocation,
    required super.propertyType,
    required super.propertySpace,
    required super.propertySpaceMeasuringUnit,
    required super.squareMeterPrice,
    required super.propertyRoomsNumber,
    required super.propertyBathroomsNumber,
    required super.propertyHallsNumber,
    required super.propertyAge,
    required super.propertyDescription,
    required super.propertyPostedBy,
  });
  factory AnnouncementDetailsModel.fromJson(Map<String, dynamic> json) {
    final price = json['price'] as double;
    final priceUnit = json['price_unit'] as String;
    final announcementType = json['announcement_type'] as String;
    final announcementNumber = json['announcement_number'] as int;
    final announcemnetPostDate = json['announcement_post_date'] as String;
    final announcementTitle = json['announcement_title'] as String;
    final announcementRate = json['announcement_rate'] as double;
    final announcementNumberOfRates = json['announcement_number_of_rates'] as int;
    final announcementLocation = json['announcement_location'] as String;
    final propertyType = json['property_type'] as String;
    final propertySpace = json['property_space'] as double;
    final propertySpaceMeasuringUnit = json['property_measuring_unit'] as String;
    final squareMeterPrice = json['square_meter_price'] as double;
    final propertyRoomsNumber = json['property_rooms_number'] as int;
    final propertyBathroomsNumber = json['property_bathrooms_number'] as int;
    final propertyHallsNumber = json['property_halls_number'] as int;
    final propertyAge = json['property_age'] as int;
    final propertyDescription = json['property_description'] as String;
    final propertyPostedBy = json['property_posted_by'] as String;
    return AnnouncementDetailsModel(
      price: price,
      priceUnit: priceUnit,
      announcementType: announcementType,
      announcementNumber: announcementNumber,
      announcemnetPostDate: announcemnetPostDate,
      announcementTitle: announcementTitle,
      announcementRate: announcementRate,
      announcementNumberOfRates: announcementNumberOfRates,
      announcementLocation: announcementLocation,
      propertyType: propertyType,
      propertySpace: propertySpace,
      propertySpaceMeasuringUnit: propertySpaceMeasuringUnit,
      squareMeterPrice: squareMeterPrice,
      propertyRoomsNumber: propertyRoomsNumber,
      propertyBathroomsNumber: propertyBathroomsNumber,
      propertyHallsNumber: propertyHallsNumber,
      propertyAge: propertyAge,
      propertyDescription: propertyDescription,
      propertyPostedBy: propertyPostedBy,
    );
  }
}
