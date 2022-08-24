import 'package:equatable/equatable.dart';

class PropertyType extends Equatable {
  final String name;
  const PropertyType({
    required this.name,
  });
  @override
  List<Object?> get props => [
        name,
      ];
}
