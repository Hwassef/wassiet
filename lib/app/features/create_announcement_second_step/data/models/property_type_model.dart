import 'package:wassiet/app/features/create_announcement_second_step/domain/entities/property_type.dart';

class PropertyTypeModel extends PropertyType {
  const PropertyTypeModel({required super.name});
  factory PropertyTypeModel.fromJson(Map<String, dynamic> json) {
    final name = json['name'] as String;
    return PropertyTypeModel(name: name);
  }
}
