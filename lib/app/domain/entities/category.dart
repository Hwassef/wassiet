class Category {
  final String categoryName;
  Category({
    required this.categoryName,
  });
  factory Category.fromJson(Map<String, dynamic> json) {
    final categoryName = json['category_name'] as String;
    return Category(categoryName: categoryName);
  }
}
