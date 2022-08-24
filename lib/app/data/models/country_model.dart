import 'package:wassiet/app/domain/entities/country.dart';

class CountryModel extends Country {
  const CountryModel({required super.name, required super.code});

  factory CountryModel.fromJson(Map<String, dynamic> json) {
    final name = json["name"] as String;
    final code = json["code"] as String;
    return CountryModel(name: name, code: code);
  }
}
