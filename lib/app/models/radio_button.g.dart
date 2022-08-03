// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'radio_button.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$RadioButton on RadioButtonBase, Store {
  late final _$valueAtom =
      Atom(name: 'RadioButtonBase.value', context: context);

  @override
  int get value {
    _$valueAtom.reportRead();
    return super.value;
  }

  @override
  set value(int value) {
    _$valueAtom.reportWrite(value, super.value, () {
      super.value = value;
    });
  }

  late final _$RadioButtonBaseActionController =
      ActionController(name: 'RadioButtonBase', context: context);

  @override
  void changeCurrentSelectedItem({required int selectedItem}) {
    final _$actionInfo = _$RadioButtonBaseActionController.startAction(
        name: 'RadioButtonBase.changeCurrentSelectedItem');
    try {
      return super.changeCurrentSelectedItem(selectedItem: selectedItem);
    } finally {
      _$RadioButtonBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value}
    ''';
  }
}
