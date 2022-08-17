class Region {
  final String name;
  final String? shortCode;
  Region({
    required this.name,
    required this.shortCode,
  });
  factory Region.fromJson(Map<String, dynamic> json) {
    final name = json["name"] as String;
    final shortCode = json["shortCode"] as String?;
    return Region(name: name, shortCode: shortCode);
  }
}
