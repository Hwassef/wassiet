class FilterBy {
  final String filterByName;
  bool isSelected;
  FilterBy({
    required this.filterByName,
    required this.isSelected,
  });
  factory FilterBy.fromJson(Map<String, dynamic> json) {
    final filterByName = json['filter_by_name'] as String;
    final isSelected = json['is_selected'] as bool;
    return FilterBy(filterByName: filterByName, isSelected: isSelected);
  }
}
