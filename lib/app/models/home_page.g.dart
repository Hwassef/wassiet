// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_page.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomePageVM on HomePageBase, Store {
  late final _$categoriesAtom =
      Atom(name: 'HomePageBase.categories', context: context);

  @override
  List<Category> get categories {
    _$categoriesAtom.reportRead();
    return super.categories;
  }

  @override
  set categories(List<Category> value) {
    _$categoriesAtom.reportWrite(value, super.categories, () {
      super.categories = value;
    });
  }

  late final _$announcementsAtom =
      Atom(name: 'HomePageBase.announcements', context: context);

  @override
  List<Announcement> get announcements {
    _$announcementsAtom.reportRead();
    return super.announcements;
  }

  @override
  set announcements(List<Announcement> value) {
    _$announcementsAtom.reportWrite(value, super.announcements, () {
      super.announcements = value;
    });
  }

  late final _$isLoadingAtom =
      Atom(name: 'HomePageBase.isLoading', context: context);

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$getAllCategoriesAsyncAction =
      AsyncAction('HomePageBase.getAllCategories', context: context);

  @override
  Future<void> getAllCategories() {
    return _$getAllCategoriesAsyncAction.run(() => super.getAllCategories());
  }

  late final _$getAllAnnouncementsAsyncAction =
      AsyncAction('HomePageBase.getAllAnnouncements', context: context);

  @override
  Future<void> getAllAnnouncements() {
    return _$getAllAnnouncementsAsyncAction
        .run(() => super.getAllAnnouncements());
  }

  @override
  String toString() {
    return '''
categories: ${categories},
announcements: ${announcements},
isLoading: ${isLoading}
    ''';
  }
}
