import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:mobx/mobx.dart';
import 'package:wassiet/app/domain/entities/notification_model.dart';
part 'notifications_vm.g.dart';

class NotificationsVM = Notifications with _$NotificationsVM;

abstract class Notifications with Store {
  @observable
  List<NotificationModel> notifications = <NotificationModel>[];
  @action
  Future<void> getAllNotifications() async {
    final response = await rootBundle.loadString('assets/fake_data/notifications.json');
    final json = jsonDecode(response) as List;
    notifications = json.map((object) => NotificationModel.fromJson(object)).toList();
  }
}
