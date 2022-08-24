import 'package:wassiet/app/error/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:wassiet/app/features/create_announcement_second_step/domain/entities/purpose_of_announcement.dart';
import 'package:wassiet/app/features/create_announcement_second_step/domain/repositories/create_announcement_second_step_repository.dart';
import 'package:wassiet/app/usecase.dart';

class CreateAnnouncementSecondStepUseCases extends UseCase<List<PurposeOfAnnouncement>, NoParams> {
  final CreateAnnouncementSecondStepRepository repository;
  CreateAnnouncementSecondStepUseCases({required this.repository});
  @override
  Future<Either<Failure, List<PurposeOfAnnouncement>>> call(NoParams params) async {
    return await repository.getAllPurposesOfAnnouncement();
  }
}
