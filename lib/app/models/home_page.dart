import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:mobx/mobx.dart';
import 'package:wassiet/app/domain/entities/announcement.dart';
import 'package:wassiet/app/domain/entities/category.dart';
part 'home_page.g.dart';

class HomePageVM = HomePageBase with _$HomePageVM;

abstract class HomePageBase with Store {
  @observable
  List<Category> categories = <Category>[];
  @observable
  List<Announcement> announcements = <Announcement>[];
  @observable
  bool isLoading = false;
  @action
  Future<void> getAllCategories() async {
    final response = await rootBundle.loadString('assets/fake_data/categories.json');
    final json = jsonDecode(response) as List;
    categories = json.map((object) => Category.fromJson(object)).toList();
  }

  @action
  Future<void> getAllAnnouncements() async {
    isLoading = true;
    final response = await rootBundle.loadString('assets/fake_data/announcements.json');
    final json = jsonDecode(response) as List;
    announcements = json.map((object) => Announcement.fromJson(object)).toList();
    isLoading = false;
  }
}
