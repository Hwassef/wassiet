import 'package:dartz/dartz.dart';
import 'package:wassiet/app/error/failures.dart';
import 'package:wassiet/app/features/home_page/domain/entities/announcement.dart';
import 'package:wassiet/app/features/home_page/domain/entities/category.dart';

abstract class HomePageRepository {
  Future<Either<Failure, List<Announcement>>> getAllAnnouncements();
  Future<Either<Failure, List<Category>>> getAllCategories();
}
