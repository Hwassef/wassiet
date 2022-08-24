import 'package:dartz/dartz.dart';
import 'package:wassiet/app/error/failures.dart';
import 'package:wassiet/app/features/create_announcement_fourth_step/domain/entities/available_item.dart';

abstract class CreateAnnouncementFourthStepRepository {
  Future<Either<Failure, List<AvailableItem>>> getAllAvailableItems();
}
