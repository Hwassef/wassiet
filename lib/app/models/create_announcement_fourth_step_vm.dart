import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:mobx/mobx.dart';
import 'package:wassiet/app/domain/entities/available.dart';
import 'package:wassiet/utils/extensions.dart';
part 'create_announcement_fourth_step_vm.g.dart';

class CreateAnnouncementFourthStepVM = CreateAnnouncementFourthStep with _$CreateAnnouncementFourthStepVM;

abstract class CreateAnnouncementFourthStep with Store {
  @observable
  List<Available> availableList = <Available>[];
  @observable
  List<Available> selectedAvailible = <Available>[];
  @action
  Future<void> getAllAvailables() async {
    final response = await rootBundle.loadString('assets/fake_data/available.json');
    final json = jsonDecode(response) as List;
    availableList = json.map((object) => Available.fromJson(object)).toList();
  }

  @action
  void checkBoxOnChange({required int index, required bool isSelected}) {
    availableList[index].isSelected = isSelected;
    for (var element in availableList) {
      if (element.isSelected) {
        selectedAvailible.add(element);
      } else {
        selectedAvailible.remove(element);
      }
    }
    selectedAvailible.unique((x) => x.name);
  }

  @action
  void removeSelectedAvailable({required int index}) {
    selectedAvailible.removeAt(index);
    availableList[index].isSelected = false;
  }
}
