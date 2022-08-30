import 'package:wassiet/app/error/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:wassiet/app/features/announcement_details/domain/entity/announcement_rating_and_comments.dart';
import 'package:wassiet/app/features/announcement_details/domain/repository/announcement_details_repository.dart';
import 'package:wassiet/app/usecase.dart';

class GetAnnouncementAndCommentsUseCase extends UseCase<AnnouncementRatingAndComments, NoParams> {
  final AnnouncementDetailsRepository repository;
  GetAnnouncementAndCommentsUseCase(this.repository);

  @override
  Future<Either<Failure, AnnouncementRatingAndComments>> call(NoParams params) async {
    return await repository.getAnnouncementRatingAndComments();
  }
}
