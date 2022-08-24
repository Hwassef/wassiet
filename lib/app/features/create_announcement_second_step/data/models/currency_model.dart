import 'package:wassiet/app/features/create_announcement_second_step/domain/entities/currency.dart';

class CurrencyModel extends Currency {
  const CurrencyModel({required super.code, required super.name});
  factory CurrencyModel.fromJson(Map<String, dynamic> json) {
    final code = json['code'] as String;
    final name = json['name'] as String;
    return CurrencyModel(code: code, name: name);
  }
}
