import 'package:dartz/dartz.dart';
import 'package:wassiet/app/error/failures.dart';
import 'package:wassiet/app/features/get_all_regions/domain/entities/region.dart';

abstract class GetAllRegionsRepository {
  Future<Either<Failure, List<Region>>> getAllRegions();
}
