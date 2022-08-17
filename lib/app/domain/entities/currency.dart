class Currency {
  final String code;
  final String name;
  Currency({
    required this.code,
    required this.name,
  });
  factory Currency.fromJson(Map<String, dynamic> json) {
    final code = json['code'] as String;
    final name = json['name'] as String;
    return Currency(code: code, name: name);
  }
}
