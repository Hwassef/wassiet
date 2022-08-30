// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'announcement_details_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AnnouncementDetailsStore on _AnnouncementDetailsStore, Store {
  late final _$announcementDetailsAtom = Atom(
      name: '_AnnouncementDetailsStore.announcementDetails', context: context);

  @override
  AnnouncementDetails? get announcementDetails {
    _$announcementDetailsAtom.reportRead();
    return super.announcementDetails;
  }

  @override
  set announcementDetails(AnnouncementDetails? value) {
    _$announcementDetailsAtom.reportWrite(value, super.announcementDetails, () {
      super.announcementDetails = value;
    });
  }

  late final _$_AnnouncementDetailsStoreActionController =
      ActionController(name: '_AnnouncementDetailsStore', context: context);

  @override
  void getAnnouncementDetails() {
    final _$actionInfo = _$_AnnouncementDetailsStoreActionController
        .startAction(name: '_AnnouncementDetailsStore.getAnnouncementDetails');
    try {
      return super.getAnnouncementDetails();
    } finally {
      _$_AnnouncementDetailsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
announcementDetails: ${announcementDetails}
    ''';
  }
}
