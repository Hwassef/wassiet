// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'radio_button.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$RadioButton on RadioButtonBase, Store {
  late final _$selectedItemNameAtom =
      Atom(name: 'RadioButtonBase.selectedItemName', context: context);

  @override
  String get selectedItemName {
    _$selectedItemNameAtom.reportRead();
    return super.selectedItemName;
  }

  @override
  set selectedItemName(String value) {
    _$selectedItemNameAtom.reportWrite(value, super.selectedItemName, () {
      super.selectedItemName = value;
    });
  }

  late final _$RadioButtonBaseActionController =
      ActionController(name: 'RadioButtonBase', context: context);

  @override
  void changeCurrentSelectedItem({required String name}) {
    final _$actionInfo = _$RadioButtonBaseActionController.startAction(
        name: 'RadioButtonBase.changeCurrentSelectedItem');
    try {
      return super.changeCurrentSelectedItem(name: name);
    } finally {
      _$RadioButtonBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
selectedItemName: ${selectedItemName}
    ''';
  }
}
