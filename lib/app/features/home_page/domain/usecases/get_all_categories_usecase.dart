import 'package:wassiet/app/error/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:wassiet/app/features/home_page/domain/repositories/home_page_repository.dart';
import 'package:wassiet/app/usecase.dart';

import '../entities/category.dart';

class GetAllCategoriesUseCase extends UseCase<List<Category>, NoParams> {
  final HomePageRepository repository;
  GetAllCategoriesUseCase({required this.repository});
  @override
  Future<Either<Failure, List<Category>>> call(NoParams params) async {
    return await repository.getAllCategories();
  }
}
