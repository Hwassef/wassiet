import 'package:equatable/equatable.dart';

class AnnouncementDetails extends Equatable {
  final double price;
  final String priceUnit;
  final String announcementType;
  final int announcementNumber;
  final String announcemnetPostDate;
  final String announcementTitle;
  final double announcementRate;
  final int announcementNumberOfRates;
  final String announcementLocation;
  final String propertyType;
  final double propertySpace;
  final String propertySpaceMeasuringUnit;
  final double squareMeterPrice;
  final int propertyRoomsNumber;
  final int propertyBathroomsNumber;
  final int propertyHallsNumber;
  final int propertyAge;
  final String propertyDescription;
  final String propertyPostedBy;
  const AnnouncementDetails({
    required this.price,
    required this.priceUnit,
    required this.announcementType,
    required this.announcementNumber,
    required this.announcemnetPostDate,
    required this.announcementTitle,
    required this.announcementRate,
    required this.announcementNumberOfRates,
    required this.announcementLocation,
    required this.propertyType,
    required this.propertySpace,
    required this.propertySpaceMeasuringUnit,
    required this.squareMeterPrice,
    required this.propertyRoomsNumber,
    required this.propertyBathroomsNumber,
    required this.propertyHallsNumber,
    required this.propertyAge,
    required this.propertyDescription,
    required this.propertyPostedBy,
  });

  @override
  List<Object?> get props => [
        price,
        priceUnit,
        announcementType,
        announcementNumber,
        announcemnetPostDate,
        announcementTitle,
        announcementRate,
        announcementNumberOfRates,
        announcementLocation,
        propertyType,
        propertySpace,
        propertySpaceMeasuringUnit,
        squareMeterPrice,
        propertyRoomsNumber,
        propertyBathroomsNumber,
        propertyHallsNumber,
        propertyAge,
        propertyDescription,
        propertyPostedBy,
      ];
}
