import 'package:equatable/equatable.dart';

class Category extends Equatable {
  final String categoryName;
  const Category({
    required this.categoryName,
  });
  @override
  List<Object?> get props => [
        categoryName,
      ];
}
