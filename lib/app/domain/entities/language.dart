import 'package:wassiet/widgets/required_field.dart';

class Language {
  final String name;
  final String languageCode;
  Language({
    required this.name,
    required this.languageCode,
  });
  factory Language.fromJson(Map<String, dynamic> json) {
    final name = json['name'] as String;
    final languageCode = json['language_code'] as String;
    return Language(
      name: name,
      languageCode: languageCode,
    );
  }
}
