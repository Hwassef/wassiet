import 'package:flutter/material.dart';
import 'package:wassiet/widgets/custom_stepper.dart';

class CreateAnnouncementPage extends StatefulWidget {
  const CreateAnnouncementPage({Key? key}) : super(key: key);

  @override
  State<CreateAnnouncementPage> createState() => _CreateAnnouncementPageState();
}

class _CreateAnnouncementPageState extends State<CreateAnnouncementPage> {
  @override
  Widget build(BuildContext context) {
    return CustomStepper();
  }
}
