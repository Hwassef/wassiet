import 'package:dartz/dartz.dart';
import 'package:wassiet/app/error/failures.dart';
import 'package:wassiet/app/features/announcement_details/domain/entity/announcement_details.dart';

abstract class AnnouncementDetailsRepository {
  Future<Either<Failure, AnnouncementDetails>> getAnnouncementDetails();
}
