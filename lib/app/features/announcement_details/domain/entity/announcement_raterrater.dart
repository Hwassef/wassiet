import 'package:equatable/equatable.dart';

class AnnouncementRater extends Equatable {
  final String raterFullName;
  final String rateDate;
  final int rateNumberOfStars;
  final String raterComment;
  const AnnouncementRater({
    required this.raterFullName,
    required this.rateDate,
    required this.rateNumberOfStars,
    required this.raterComment,
  });

  @override
  List<Object?> get props => [
        raterFullName,
        rateDate,
        rateNumberOfStars,
        raterComment,
      ];
}
