import 'package:equatable/equatable.dart';

class Region extends Equatable {
  final String name;
  final String? shortCode;
  const Region({
    required this.name,
    required this.shortCode,
  });

  @override
  List<Object?> get props => [
        name,
        shortCode,
      ];
}
