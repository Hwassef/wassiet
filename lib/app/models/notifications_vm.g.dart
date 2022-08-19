// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notifications_vm.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$NotificationsVM on Notifications, Store {
  late final _$notificationsAtom =
      Atom(name: 'Notifications.notifications', context: context);

  @override
  List<NotificationModel> get notifications {
    _$notificationsAtom.reportRead();
    return super.notifications;
  }

  @override
  set notifications(List<NotificationModel> value) {
    _$notificationsAtom.reportWrite(value, super.notifications, () {
      super.notifications = value;
    });
  }

  late final _$getAllNotificationsAsyncAction =
      AsyncAction('Notifications.getAllNotifications', context: context);

  @override
  Future<void> getAllNotifications() {
    return _$getAllNotificationsAsyncAction
        .run(() => super.getAllNotifications());
  }

  @override
  String toString() {
    return '''
notifications: ${notifications}
    ''';
  }
}
