import 'package:wassiet/app/features/get_all_regions/data/datasources/get_all_regions_remote_data_source.dart';
import 'package:wassiet/app/features/get_all_regions/domain/repositories/get_all_regions_repository.dart';
import 'package:wassiet/app/features/get_all_regions/domain/entities/region.dart';
import 'package:wassiet/app/error/failures.dart';
import 'package:dartz/dartz.dart';

class GetAllRegionsImpl implements GetAllRegionsRepository {
  final GetAllRegionsRemoteDataSource remoteDataSource;
  GetAllRegionsImpl(this.remoteDataSource);
  @override
  Future<Either<Failure, List<Region>>> getAllRegions() async {
    return Right(await remoteDataSource.getAllRegions());
  }
}
