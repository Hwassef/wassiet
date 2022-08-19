class NotificationModel {
  final String title;
  final String description;
  final String recieveDate;
  NotificationModel({
    required this.title,
    required this.description,
    required this.recieveDate,
  });
  factory NotificationModel.fromJson(Map<String, dynamic> json) {
    final title = json['title'] as String;
    final description = json['description'] as String;
    final recieveDate = json['recieve_date'] as String;
    return NotificationModel(
      title: title,
      description: description,
      recieveDate: recieveDate,
    );
  }
}
