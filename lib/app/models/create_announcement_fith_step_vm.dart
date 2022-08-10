import 'dart:io';

import 'package:mobx/mobx.dart';

part 'create_announcement_fith_step_vm.g.dart';

class CreateAnnouncementFithStepVM = CreateAnnouncementFithStep with _$CreateAnnouncementFithStepVM;

abstract class CreateAnnouncementFithStep with Store {
  @observable
  List<File> images = <File>[];
  @action
  void addPicture(File image) {
    images.add(image);
  }
}
