import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:mobx/mobx.dart';
import 'package:wassiet/app/domain/entities/language.dart';
part 'change_app_language_vm.g.dart';

class ChangeAppLanguageVM = ChangeAppLanguage with _$ChangeAppLanguageVM;

abstract class ChangeAppLanguage with Store {
  @observable
  List<Language> languages = <Language>[];
  @action
  Future<void> getAllLanguages() async {
    final response = await rootBundle.loadString('assets/fake_data/languages.json');
    final json = jsonDecode(response) as List;
    languages = json.map((object) => Language.fromJson(object)).toList();
  }
}
