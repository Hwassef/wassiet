import 'dart:convert';
import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:mobx/mobx.dart';
import 'package:wassiet/app/view_models/country.dart';
import 'package:wassiet/config/routes/app_router.gr.dart';
part 'edit_my_informations.g.dart';

class EditMyInformations = EditMyInformationsBase with _$EditMyInformations;

abstract class EditMyInformationsBase with Store {
  @observable
  File? imageFile;
  @action
  void getImageFromImagePicker(File image) {
    imageFile = image;
  }

  @observable
  String? fullName;

  @observable
  String? emailAddress;

  @observable
  String? phoneNumber;
  @observable
  bool isFullNameValid = false;
  @observable
  bool isEmailValid = false;
  @observable
  bool isPhoneNumberValid = false;
  @action
  String? validateFullName(final String? fullName) {
    if (fullName == null || fullName.isEmpty) {
      isFullNameValid = false;

      return 'This field is required';
    }
    if (fullName.length < 3) {
      return 'Too short';
    }
    isFullNameValid = true;
    return null;
  }

  @action
  String? validateEmail(final String? value) {
    if (value == null || value.isEmpty) return 'This field is required';
    final regExp = RegExp(
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');

    if (!regExp.hasMatch(value)) {
      isEmailValid = false;

      return 'Email invalide';
    } else {
      isEmailValid = true;
      return null;
    }
  }

  @action
  String? validatePhoneNumber({required String? phoneNumber}) {
    if (phoneNumber != null && phoneNumber.length != 8) {
      isPhoneNumberValid = false;

      return 'Wrong phone number';
    } else {
      isPhoneNumberValid = true;
      return null;
    }
  }

  @computed
  bool get isFormValid => isFullNameValid && isPhoneNumberValid && isEmailValid;
  @action
  void handleEditPersonnalInformationOnClick(BuildContext context) => context.navigateTo(const HomePageRoute());
  @action
  Future<List<Country>> getAllCountries() async {
    final response = await rootBundle.loadString('assets/fake_data/countries.json');
    final json = jsonDecode(response) as List;
    var mapped = json.map((object) => Country.fromJson(object)).toList();
    return mapped;
  }
}
