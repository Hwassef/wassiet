class OrderBy {
  final String name;
  bool isSelected;
  OrderBy({
    required this.name,
    required this.isSelected,
  });
  factory OrderBy.fromJson(Map<String, dynamic> json) {
    final name = json['name'] as String;
    final isSelected = json['is_selected'] as bool;
    return OrderBy(name: name, isSelected: isSelected);
  }
}
