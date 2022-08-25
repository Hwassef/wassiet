import 'package:wassiet/app/features/create_announcement_fourth_step/data/datasources/create_announcement_fourth_step_remote_data_source.dart';
import 'package:wassiet/app/features/create_announcement_fourth_step/domain/entities/available_item.dart';
import 'package:wassiet/app/features/create_announcement_fourth_step/domain/repositories/create_announcement_fourth_step_repository.dart';
import 'package:wassiet/app/features/home_page/data/datasources/home_page_remote_data_source.dart';
import 'package:wassiet/app/error/failures.dart';
import 'package:dartz/dartz.dart';

class CreateAnnouncementFourthStepRepositoryImpl implements CreateAnnouncementFourthStepRepository {
  final CreateAnnouncementFourthStepRemoteDataSource remoteDataSource;
  CreateAnnouncementFourthStepRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, List<AvailableItem>>> getAllAvailableItems() async {
    return Right(await remoteDataSource.getAllAvailableItems());
  }
}
