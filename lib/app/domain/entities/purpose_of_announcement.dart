class PurposeOfAnnouncement {
  final String name;
  PurposeOfAnnouncement({
    required this.name,
  });
  factory PurposeOfAnnouncement.fromJson(Map<String, dynamic> json) {
    final name = json['name'] as String;
    return PurposeOfAnnouncement(name: name);
  }
}
