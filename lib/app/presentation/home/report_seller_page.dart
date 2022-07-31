import 'package:flutter/material.dart';
import 'package:wassiet/widgets/custom_back_button.dart';

class ReportSellerPage extends StatelessWidget {
  const ReportSellerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              CustomBackButton(),
            ],
          ),
          const SizedBox(
            height: 16.0,
          ),
        ],
      ),
    );
  }
}
