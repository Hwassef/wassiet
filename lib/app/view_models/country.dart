class Country {
  final String name;
  final String code;
  Country({
    required this.name,
    required this.code,
  });
  factory Country.fromJson(Map<String, dynamic> json) {
    final name = json["name"] as String;
    final code = json["code"] as String;
    return Country(name: name, code: code);
  }
}
