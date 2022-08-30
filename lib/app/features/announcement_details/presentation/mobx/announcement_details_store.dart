import 'package:mobx/mobx.dart';
import 'package:wassiet/app/features/announcement_details/domain/entity/announcement_details.dart';
import 'package:wassiet/app/features/announcement_details/domain/repository/announcement_details_repository.dart';
import 'package:wassiet/app/features/announcement_details/domain/usecase/get_announcement_details_usecase.dart';
import 'package:wassiet/app/usecase.dart';

part 'announcement_details_store.g.dart';

class AnnouncementDetailsStore extends _AnnouncementDetailsStore with _$AnnouncementDetailsStore {
  AnnouncementDetailsStore(GetAnnouncementDetailsUseCase getAnnouncementDetailsUseCase)
      : super(getAnnouncementDetailsUseCase);
}

abstract class _AnnouncementDetailsStore with Store {
  final GetAnnouncementDetailsUseCase getAnnouncementDetailsUseCase;
  _AnnouncementDetailsStore(this.getAnnouncementDetailsUseCase);
  @observable
  AnnouncementDetails? announcementDetails;
  @action
  void getAnnouncementDetails() {}
}
