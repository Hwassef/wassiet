import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:mobx/mobx.dart';
import 'package:wassiet/app/domain/entities/countries_region.dart';
part 'create_announcement_first_step_vm.g.dart';

class CreateAnnouncementFirstStepVM = CreateAnnouncementFirstStep with _$CreateAnnouncementFirstStepVM;

abstract class CreateAnnouncementFirstStep with Store {
  @observable
  String? countryName;
  @observable
  String? regionName;
  @observable
  String? announcementTitle;
  @observable
  bool isAnnouncementTitleValid = false;
  // @observable
  CountriesRegion? countryRegion;
  @action
  String? validateAnnouncementTitle({required String title}) {
    if ((title.length > 3) && (title.length < 20)) {
      isAnnouncementTitleValid = true;
      return null;
    } else {
      isAnnouncementTitleValid = false;
      return 'Wrong announcement title';
    }
  }

  @action
  String selectedCountryName(String name) {
    getAllRegions(countryName: name);
    return countryName = name;
  }

  @action
  String selectedRegionName(String name) => regionName = name;

  @action
  Future<void> getAllRegions({required String countryName}) async {
    final response = await rootBundle.loadString('assets/fake_data/regions.json');
    final json = jsonDecode(response) as List;
    List<CountriesRegion> regions = json.map((object) => CountriesRegion.fromJson(object)).toList();
    countryRegion = regions.where((CountriesRegion element) => element.countryName == countryName).first;
  }
}
