import 'package:get_it/get_it.dart';
import 'package:wassiet/app/features/announcement_details/data/repositories/announcement_details_repository_impl.dart';
import 'package:wassiet/app/features/announcement_details/domain/usecase/get_announcement_details_usecase.dart';
import 'package:wassiet/app/features/create_announcement_fourth_step/data/repositories/create_announcement_fourth_step_repository_impl.dart';
import 'package:wassiet/app/features/create_announcement_fourth_step/domain/usecases/create_announcement_fourth_step_usecases.dart';
import 'package:wassiet/app/features/create_announcement_second_step/data/repositories/create_announcement_second_step_repository_impl.dart';
import 'package:wassiet/app/features/create_announcement_second_step/domain/usecases/create_announcement_second_step.dart';
import 'package:wassiet/app/features/get_all_regions/data/repositories/get_all_regions_impl.dart';
import 'package:wassiet/app/features/get_all_regions/domain/usecases/get_all_regions.dart';
import 'package:wassiet/app/features/home_page/data/repositories/home_page_repository_impl.dart';
import 'package:wassiet/app/features/home_page/domain/usecases/get_all_announcements_usecase.dart';

import 'features/announcement_details/data/datasource/announcement_details_remote_data_source.dart';
import 'features/announcement_details/domain/repository/announcement_details_repository.dart';
import 'features/announcement_details/domain/usecase/get_announcement_rating_and_comments.dart';
import 'features/announcement_details/presentation/mobx/announcement_details_store.dart';

final GetIt sl = GetIt.instance;
Future<void> init() async {
  // sl.registerSingleton<GetAnnouncementDetailsUseCase>(() => GetAnnouncementDetailsUseCase(sl()));
  sl.registerFactory(() => AnnouncementDetailsStore(sl()));

  /// Stores

  /// Use cases
  sl.registerFactory(() => GetAnnouncementDetailsUseCase(sl()));
  // sl.registerSingleton(() => GetAllAnnouncementsUseCase(sl()));
  // sl.registerFactory<GetAnnouncementAndCommentsUseCase>(() => GetAnnouncementAndCommentsUseCase(sl()));
  // sl.registerSingleton(() => CreateAnnouncementFourthStepUseCases(sl()));
  // sl.registerSingleton(() => CreateAnnouncementSecondStepUseCases(sl()));
  // sl.registerSingleton(() => GetAllRegions(sl()));

  /// Repositories
  sl.registerLazySingleton<AnnouncementDetailsRepository>(() => AnnouncementDetailsRepositoryImpl(sl()));
  // sl.registerSingleton(() => AnnouncementDetailsRepositoryImpl(sl()));
  // sl.registerSingleton(() => CreateAnnouncementFourthStepRepositoryImpl(sl()));
  // sl.registerSingleton(() => CreateAnnouncementSecondStepRepositoryImpl(sl()));
  // sl.registerSingleton(() => GetAllRegionsImpl(sl()));
  // sl.registerSingleton(() => HomePageRepositoryImpl(sl()));

  /// Data sources
  sl.registerLazySingleton<AnnouncementDetailsRemoteDataSource>(() => AnnouncementDetailsRemoteDataSourceImpl());
  // sl.registerSingleton<AnnouncementDetailsRemoteDataSource>(
  //   () => AnnouncementDetailsRemoteDataSourceImpl,
  // );
  // sl.registerSingleton<CreateAnnouncementFourthStepRemoteDataSource>(
  //   () => CreateAnnouncementFourthStepRemoteDataSourceImpl(),
  // );
  // sl.registerSingleton<CreateAnnouncementSecondStepRemoteDataSource>(
  //   () => CreateAnnouncementSecondStepRemoteDataSourceImpl(),
  // );
  // sl.registerSingleton<GetAllRegionsRemoteDataSource>(
  //   () => GetAllRegionsRemoteDataSourceImpl(),
  // );
  // sl.registerSingleton<HomePageRemoteDataSource>(
  //   () => HomePageRemoteDataSourceImpl(),
  // );
}
