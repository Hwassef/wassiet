import 'package:wassiet/app/error/failures.dart';

import 'package:dartz/dartz.dart';
import 'package:wassiet/app/features/home_page/data/datasources/home_page_remote_data_source.dart';
import 'package:wassiet/app/features/home_page/domain/entities/announcement.dart';
import 'package:wassiet/app/features/home_page/domain/entities/category.dart';
import 'package:wassiet/app/features/home_page/domain/repositories/home_page_repository.dart';

class HomePageRepositoryImpl implements HomePageRepository {
  final HomePageRemoteDataSource remoteDataSource;
  HomePageRepositoryImpl({required this.remoteDataSource});
  @override
  Future<Either<Failure, List<Announcement>>> getAllAnnouncements() async {
    return Right(await remoteDataSource.getAllAnnouncements());
  }

  @override
  Future<Either<Failure, List<Category>>> getAllCategories() async {
    return Right(await remoteDataSource.getAllCategories());
  }
}
