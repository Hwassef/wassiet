// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_announcement_fourth_step_vm.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CreateAnnouncementFourthStepVM on CreateAnnouncementFourthStep, Store {
  late final _$availableListAtom = Atom(
      name: 'CreateAnnouncementFourthStep.availableList', context: context);

  @override
  List<AvailableItem> get availableList {
    _$availableListAtom.reportRead();
    return super.availableList;
  }

  @override
  set availableList(List<AvailableItem> value) {
    _$availableListAtom.reportWrite(value, super.availableList, () {
      super.availableList = value;
    });
  }

  late final _$selectedAvailibleAtom = Atom(
      name: 'CreateAnnouncementFourthStep.selectedAvailible', context: context);

  @override
  List<AvailableItem> get selectedAvailible {
    _$selectedAvailibleAtom.reportRead();
    return super.selectedAvailible;
  }

  @override
  set selectedAvailible(List<AvailableItem> value) {
    _$selectedAvailibleAtom.reportWrite(value, super.selectedAvailible, () {
      super.selectedAvailible = value;
    });
  }

  late final _$getAllAvailablesAsyncAction = AsyncAction(
      'CreateAnnouncementFourthStep.getAllAvailables',
      context: context);

  @override
  Future<void> getAllAvailables() {
    return _$getAllAvailablesAsyncAction.run(() => super.getAllAvailables());
  }

  late final _$CreateAnnouncementFourthStepActionController =
      ActionController(name: 'CreateAnnouncementFourthStep', context: context);

  @override
  void checkBoxOnChange({required int index, required bool isSelected}) {
    final _$actionInfo = _$CreateAnnouncementFourthStepActionController
        .startAction(name: 'CreateAnnouncementFourthStep.checkBoxOnChange');
    try {
      return super.checkBoxOnChange(index: index, isSelected: isSelected);
    } finally {
      _$CreateAnnouncementFourthStepActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeSelectedAvailable({required int index}) {
    final _$actionInfo =
        _$CreateAnnouncementFourthStepActionController.startAction(
            name: 'CreateAnnouncementFourthStep.removeSelectedAvailable');
    try {
      return super.removeSelectedAvailable(index: index);
    } finally {
      _$CreateAnnouncementFourthStepActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
availableList: ${availableList},
selectedAvailible: ${selectedAvailible}
    ''';
  }
}
