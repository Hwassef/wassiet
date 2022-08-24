import 'package:wassiet/app/features/get_all_regions/domain/entities/region.dart';

class RegionModel extends Region {
  const RegionModel({required super.name, required super.shortCode});
  factory RegionModel.fromJson(Map<String, dynamic> json) {
    final name = json["name"] as String;
    final shortCode = json["shortCode"] as String?;
    return RegionModel(name: name, shortCode: shortCode);
  }
}
