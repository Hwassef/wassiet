import 'package:wassiet/app/features/get_all_categories/domain/entities/category.dart';

class CategoryModel extends Category {
  const CategoryModel({required super.categoryName});
  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    final categoryName = json['category_name'] as String;
    return CategoryModel(categoryName: categoryName);
  }
}
