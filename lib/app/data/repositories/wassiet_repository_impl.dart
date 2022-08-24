import 'package:wassiet/app/data/datasources/get_all_countries_remote_data_source.dart';
import 'package:wassiet/app/domain/entities/country.dart';
import 'package:dartz/dartz.dart';
import 'package:wassiet/app/domain/repositories/wassiet_repository.dart';
import 'package:wassiet/app/error/failures.dart';

class WassietRepositoryImpl implements WassietRepository {
  final GetAllCountriesRemoteDataSource remoteDataSource;
  WassietRepositoryImpl({required this.remoteDataSource});
  @override
  Future<Either<Failure, List<Country>>> getAllCountries() async {
    return Right(await remoteDataSource.getAllCountries());
  }

  /// Catch Exceptions in here
  // Future<Either<Failure, List<Country>>> _getAllCountries() async {}
}
