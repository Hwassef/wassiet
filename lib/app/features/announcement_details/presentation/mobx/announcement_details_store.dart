import 'package:mobx/mobx.dart';
import 'package:wassiet/app/features/announcement_details/domain/entity/announcement_details.dart';
import 'package:wassiet/app/features/announcement_details/domain/repository/announcement_details_repository.dart';

part 'announcement_detials_store.g.dart';

class AnnouncementDetailsStore extends _AnnouncementDetailsStore with _$AnnouncementDetailsStore {
  AnnouncementDetailsStore(AnnouncementDetailsRepository announcementDetailsRepository)
      : super(announcementDetailsRepository);
}

abstract class _AnnouncementDetailsStore with Store {
  final AnnouncementDetailsRepository announcementDetailsRepository;
  _AnnouncementDetailsStore(this.announcementDetailsRepository);
  @observable
  AnnouncementDetails? announcementDetails;
  @action
  void getAnnouncementDetails() {
    announcementDetailsRepository.getAnnouncementDetails().then(
          (value) => announcementDetails = value.fold((l) => null, (r) => announcementDetails = r),
        );
  }
}
