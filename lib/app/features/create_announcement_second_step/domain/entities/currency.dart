import 'package:equatable/equatable.dart';

class Currency extends Equatable {
  final String code;
  final String name;
  const Currency({
    required this.code,
    required this.name,
  });

  @override
  List<Object?> get props => [
        code,
        name,
      ];
}
