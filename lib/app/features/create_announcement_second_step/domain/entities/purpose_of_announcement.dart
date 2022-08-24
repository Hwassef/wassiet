import 'package:equatable/equatable.dart';

class PurposeOfAnnouncement extends Equatable {
  final String name;
  const PurposeOfAnnouncement({
    required this.name,
  });
  @override
  List<Object?> get props => [
        name,
      ];
}
