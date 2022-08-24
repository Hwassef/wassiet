import 'package:wassiet/app/error/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:wassiet/app/features/get_all_regions/domain/entities/region.dart';
import 'package:wassiet/app/features/get_all_regions/domain/repositories/get_all_regions_repository.dart';
import 'package:wassiet/app/usecase.dart';

class GetAllRegions extends UseCase<List<Region>, NoParams> {
  final GetAllRegionsRepository repository;
  GetAllRegions(this.repository);
  @override
  Future<Either<Failure, List<Region>>> call(NoParams params) async {
    return await repository.getAllRegions();
  }
}
