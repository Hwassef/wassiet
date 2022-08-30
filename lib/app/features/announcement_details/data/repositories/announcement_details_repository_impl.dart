import 'package:wassiet/app/error/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:wassiet/app/features/announcement_details/data/datasource/announcement_details_remote_data_source.dart';
import 'package:wassiet/app/features/announcement_details/domain/entity/announcement_details.dart';
import 'package:wassiet/app/features/announcement_details/domain/entity/announcement_rating_and_comments.dart';
import 'package:wassiet/app/features/announcement_details/domain/repository/announcement_details_repository.dart';

class AnnouncementDetailsRepositoryImpl implements AnnouncementDetailsRepository {
  final AnnouncementDetailsRemoteDataSource remoteDataSource;
  AnnouncementDetailsRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<Failure, AnnouncementDetails>> getAnnouncementDetails() async {
    return Right(await remoteDataSource.getAnnouncemnetDetails());
  }

  @override
  Future<Either<Failure, AnnouncementRatingAndComments>> getAnnouncementRatingAndComments() async {
    return Right(await remoteDataSource.getAnnouncementRatingAndComments());
  }
}
