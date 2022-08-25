import 'package:wassiet/app/features/create_announcement_fourth_step/domain/entities/available_item.dart';

class AvaialableItemModel extends AvailableItem {
  AvaialableItemModel({required super.name, required super.isSelected});
  factory AvaialableItemModel.fromJson(Map<String, dynamic> json) {
    final name = json['name'] as String;
    final isSelected = json['is_selected'] as bool;
    return AvaialableItemModel(
      name: name,
      isSelected: isSelected,
    );
  }
}
