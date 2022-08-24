import 'package:equatable/equatable.dart';

class AvailableItem extends Equatable {
  final String name;
  bool isSelected;
  AvailableItem({
    required this.name,
    required this.isSelected,
  });
  @override
  List<Object?> get props => [
        name,
        isSelected,
      ];
}
