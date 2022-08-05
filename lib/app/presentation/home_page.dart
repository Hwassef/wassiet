import 'package:flutter/material.dart';
import 'package:wassiet/config/config.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset(
        AppImages.backgroundImage,
      ),
    );
  }
}
