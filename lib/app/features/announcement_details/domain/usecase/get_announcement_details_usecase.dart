import 'package:wassiet/app/error/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:wassiet/app/features/announcement_details/domain/entity/announcement_details.dart';
import 'package:wassiet/app/features/announcement_details/domain/repository/announcement_details_repository.dart';
import 'package:wassiet/app/usecase.dart';

class GetAnnouncementDetailsUseCase extends UseCase<AnnouncementDetails, NoParams> {
  final AnnouncementDetailsRepository repository;
  GetAnnouncementDetailsUseCase(this.repository);

  @override
  Future<Either<Failure, AnnouncementDetails>> call(NoParams params) async {
    return await repository.getAnnouncementDetails();
  }
}
