import 'package:get_it/get_it.dart';
import 'package:wassiet/app/features/create_announcement_second_step/presentation/mobx/create_announcement_second_step_store.dart';

final sl = GetIt.instance;
void init() {
  sl.registerFactory(
    () => CreateAnnouncementSecondStepStore(),
  );
}
