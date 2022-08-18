class Available {
  final String name;
  bool isSelected;
  Available({
    required this.name,
    required this.isSelected,
  });
  factory Available.fromJson(Map<String, dynamic> json) {
    final name = json['name'] as String;
    final isSelected = json['is_selected'] as bool;
    return Available(
      name: name,
      isSelected: isSelected,
    );
  }
}
