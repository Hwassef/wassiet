// import 'package:mobx/mobx.dart';
// import 'package:wassiet/app/features/create_announcement_second_step/domain/usecases/create_announcement_second_step.dart';
// import 'package:wassiet/app/usecase.dart';

// import '../../domain/entities/currency.dart';
// import '../../domain/entities/property_type.dart';
// import '../../domain/entities/purpose_of_announcement.dart';
// part 'create_announcement_second_step_store.g.dart';

// class CreateAnnouncementSecondStepStore extends _CreateAnnouncementSecondStepStore
//     with _$CreateAnnouncementSecondStepStore {
//   CreateAnnouncementSecondStepStore(CreateAnnouncementSecondStepUseCases createAnnouncementSecondStepUseCases)
//       : super(createAnnouncementSecondStepUseCases);
// }

// abstract class _CreateAnnouncementSecondStepStore with Store {
//   final CreateAnnouncementSecondStepUseCases createAnnouncementSecondStepUseCases;
//   _CreateAnnouncementSecondStepStore(this.createAnnouncementSecondStepUseCases);
//   @observable
//   List<PurposeOfAnnouncement> purposes = <PurposeOfAnnouncement>[];
//   @observable
//   String? purposeOfAnnouncementName;
//   @observable
//   List<PropertyType> properties = <PropertyType>[];
//   @observable
//   String? propertyTypeName;

//   @action
//   String selectedPurposeOfAnnouncementName(String name) => purposeOfAnnouncementName = name;
//   @action
//   String selectedPropertyTypeName(String name) => propertyTypeName = name;
//   @observable
//   List<Currency> currencies = <Currency>[];
//   @observable
//   String? currencyName;
//   @action
//   String selectedCurrencyName(String name) => currencyName = name;
//   @action
//   void getAllAnnouncementPurposes() async {
//     final apurposes = await createAnnouncementSecondStepUseCases(NoParams());
//   }
// }
