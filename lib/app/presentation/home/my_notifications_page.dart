import 'package:flutter/material.dart';
import 'package:wassiet/generated/l10n.dart';
import 'package:wassiet/widgets/custom_back_button.dart';
import 'package:wassiet/widgets/underlined_text.dart';

class MyNotificationsPage extends StatelessWidget {
  const MyNotificationsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CustomBackButton(),
                Text(S.current.notifications),
              ],
            ),
            const UnderlinedText(),
            const SizedBox(
              height: 24.0,
            ),
            OutlinedButton(
              onPressed: () {},
              child: Text(S.current.deleteAllNotifications),
            ),
          ],
        ),
      ),
    );
  }
}
