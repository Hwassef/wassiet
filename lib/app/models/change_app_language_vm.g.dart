// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_app_language_vm.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ChangeAppLanguageVM on ChangeAppLanguage, Store {
  late final _$languagesAtom =
      Atom(name: 'ChangeAppLanguage.languages', context: context);

  @override
  List<Language> get languages {
    _$languagesAtom.reportRead();
    return super.languages;
  }

  @override
  set languages(List<Language> value) {
    _$languagesAtom.reportWrite(value, super.languages, () {
      super.languages = value;
    });
  }

  late final _$getAllLanguagesAsyncAction =
      AsyncAction('ChangeAppLanguage.getAllLanguages', context: context);

  @override
  Future<void> getAllLanguages() {
    return _$getAllLanguagesAsyncAction.run(() => super.getAllLanguages());
  }

  @override
  String toString() {
    return '''
languages: ${languages}
    ''';
  }
}
