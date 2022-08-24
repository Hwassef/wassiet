import 'package:wassiet/app/features/create_announcement_second_step/data/datasources/create_announcement_second_step_remote_data_source.dart';
import 'package:wassiet/app/features/create_announcement_second_step/domain/entities/currency.dart';
import 'package:wassiet/app/features/create_announcement_second_step/domain/entities/property_type.dart';
import 'package:wassiet/app/features/create_announcement_second_step/domain/entities/purpose_of_announcement.dart';
import 'package:wassiet/app/error/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:wassiet/app/features/create_announcement_second_step/domain/repositories/create_announcement_second_step_repository.dart';

class CreateAnnouncementSecondStepRepositoryImpl implements CreateAnnouncementSecondStepRepository {
  final CreateAnnouncementSecondStepRemoteDataSource remoteDataSource;
  CreateAnnouncementSecondStepRepositoryImpl({required this.remoteDataSource});
  @override
  Future<Either<Failure, List<PurposeOfAnnouncement>>> getAllPurposesOfAnnouncement() async {
    return Right(await remoteDataSource.getAllPurposesOfAnnouncement());
  }

  @override
  Future<Either<Failure, List<PropertyType>>> getAllPropertyTypes() async {
    return Right(await remoteDataSource.getAllPropertyTypes());
  }

  @override
  Future<Either<Failure, List<Currency>>> getAllCurrencies() async {
    return Right(await remoteDataSource.getAllCurrencies());
  }
}
