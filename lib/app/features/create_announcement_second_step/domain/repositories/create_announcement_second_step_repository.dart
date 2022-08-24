import 'package:dartz/dartz.dart';
import 'package:wassiet/app/error/failures.dart';
import 'package:wassiet/app/features/create_announcement_second_step/domain/entities/currency.dart';
import 'package:wassiet/app/features/create_announcement_second_step/domain/entities/property_type.dart';
import 'package:wassiet/app/features/create_announcement_second_step/domain/entities/purpose_of_announcement.dart';

abstract class CreateAnnouncementSecondStepRepository {
  Future<Either<Failure, List<PurposeOfAnnouncement>>> getAllPurposesOfAnnouncement();
  Future<Either<Failure, List<PropertyType>>> getAllPropertyTypes();
  Future<Either<Failure, List<Currency>>> getAllCurrencies();
}
