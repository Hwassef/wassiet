class PropertyType {
  final String name;
  PropertyType({
    required this.name,
  });
  factory PropertyType.fromJson(Map<String, dynamic> json) {
    final name = json['name'] as String;
    return PropertyType(name: name);
  }
}
