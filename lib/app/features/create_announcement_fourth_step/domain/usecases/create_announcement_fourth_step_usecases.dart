import 'package:wassiet/app/error/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:wassiet/app/features/create_announcement_fourth_step/domain/entities/available_item.dart';
import 'package:wassiet/app/features/create_announcement_fourth_step/domain/repositories/create_announcement_fourth_step_repository.dart';
import 'package:wassiet/app/usecase.dart';

class CreateAnnouncementFourthStepUseCases extends UseCase<List<AvailableItem>, NoParams> {
  final CreateAnnouncementFourthStepRepository repository;
  CreateAnnouncementFourthStepUseCases({required this.repository});
  @override
  Future<Either<Failure, List<AvailableItem>>> call(NoParams params) async {
    return await repository.getAllAvailableItems();
  }
}
