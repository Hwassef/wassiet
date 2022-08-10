import 'package:flutter/material.dart';
import 'package:wassiet/widgets/custom_shimmer_effect.dart';

class BuildAnnouncementsShimmer extends StatelessWidget {
  const BuildAnnouncementsShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CustomWidget.circular(height: 64, width: 64),
      title: Align(
        alignment: Alignment.centerLeft,
        child: CustomWidget.rectangular(
          height: 16,
          width: MediaQuery.of(context).size.width * 0.3,
        ),
      ),
      subtitle: const CustomWidget.rectangular(height: 14),
    );
  }
}
