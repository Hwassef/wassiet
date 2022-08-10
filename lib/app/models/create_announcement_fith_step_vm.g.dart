// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_announcement_fith_step_vm.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CreateAnnouncementFithStepVM on CreateAnnouncementFithStep, Store {
  late final _$imagesAtom =
      Atom(name: 'CreateAnnouncementFithStep.images', context: context);

  @override
  List<File> get images {
    _$imagesAtom.reportRead();
    return super.images;
  }

  @override
  set images(List<File> value) {
    _$imagesAtom.reportWrite(value, super.images, () {
      super.images = value;
    });
  }

  late final _$CreateAnnouncementFithStepActionController =
      ActionController(name: 'CreateAnnouncementFithStep', context: context);

  @override
  void addPicture(File image) {
    final _$actionInfo = _$CreateAnnouncementFithStepActionController
        .startAction(name: 'CreateAnnouncementFithStep.addPicture');
    try {
      return super.addPicture(image);
    } finally {
      _$CreateAnnouncementFithStepActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
images: ${images}
    ''';
  }
}
