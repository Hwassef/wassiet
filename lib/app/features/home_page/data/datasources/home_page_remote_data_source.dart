import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:wassiet/app/features/home_page/data/models/announcement_model.dart';
import 'package:wassiet/app/features/home_page/data/models/category_model.dart';
import 'package:wassiet/app/features/home_page/domain/entities/announcement.dart';

import '../../domain/entities/category.dart';

abstract class HomePageRemoteDataSource {
  Future<List<Announcement>> getAllAnnouncements();
  Future<List<Category>> getAllCategories();
}

class HomePageDataSourceImpl implements HomePageRemoteDataSource {
  @override
  Future<List<Announcement>> getAllAnnouncements() async {
    final response = await rootBundle.loadString('assets/fake_data/announcements.json');
    final json = jsonDecode(response) as List;
    return json.map((object) => AnnouncementModel.fromJson(object)).toList();
  }

  @override
  Future<List<Category>> getAllCategories() async {
    final response = await rootBundle.loadString('assets/fake_data/categories.json');
    final json = jsonDecode(response) as List;
    return json.map((object) => CategoryModel.fromJson(object)).toList();
  }
}
