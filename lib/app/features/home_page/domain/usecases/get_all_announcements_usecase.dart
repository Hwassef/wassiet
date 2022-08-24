import 'package:dartz/dartz.dart';

import 'package:wassiet/app/error/failures.dart';
import 'package:wassiet/app/features/home_page/domain/entities/announcement.dart';
import 'package:wassiet/app/features/home_page/domain/repositories/home_page_repository.dart';
import 'package:wassiet/app/usecase.dart';

class GetAllAnnouncementsUseCase extends UseCase<List<Announcement>, NoParams> {
  final HomePageRepository repository;
  GetAllAnnouncementsUseCase({required this.repository});
  @override
  Future<Either<Failure, List<Announcement>>> call(NoParams params) async {
    return await repository.getAllAnnouncements();
  }
}
