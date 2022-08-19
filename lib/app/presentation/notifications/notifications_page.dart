import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wassiet/app/domain/entities/notification_model.dart';
import 'package:wassiet/app/models/notifications_vm.dart';
import 'package:wassiet/config/config.dart';
import 'package:wassiet/generated/l10n.dart';
import 'package:wassiet/widgets/widgets.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  final NotificationsVM notificationsVM = NotificationsVM();
  @override
  void initState() {
    notificationsVM.getAllNotifications();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return KeyboardDismissOnTap(
      child: SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                32.h.verticalSpace,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CustomBackButton(),
                    Text(
                      S.current.notifications,
                      style: Theme.of(context).textTheme.headline1,
                    ),
                  ],
                ),
                const UnderlinedText(),
                24.h.verticalSpace,
                OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    S.current.deleteAllNotifications,
                  ),
                ),
                Observer(
                  builder: (_) => Expanded(
                    child: ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: notificationsVM.notifications.length,
                        itemBuilder: (context, index) {
                          NotificationModel currentNotification = notificationsVM.notifications[index];
                          return Padding(
                            padding: const EdgeInsets.only(top: 16),
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    currentNotification.recieveDate,
                                  ),
                                ),
                                8.h.verticalSpace,
                                Card(
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: AppConstants.largeBorderRadius,
                                  ),
                                  elevation: 0.0,
                                  color: const Color(0xFFECF3FB),
                                  child: ListTile(
                                    contentPadding: const EdgeInsets.all(16),
                                    title: Text(currentNotification.title),
                                    subtitle: Padding(
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: Text(currentNotification.description),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        }),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
