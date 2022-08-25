import 'package:flutter/material.dart';
import 'package:wassiet/config/config.dart';
import 'package:auto_route/auto_route.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(items: [
      BottomNavigationBarItem(
        icon: Image.asset(
          AppImages.homeIcon,
          width: 21,
          height: 24,
        ),
        label: 'null',
      ),
      BottomNavigationBarItem(
        icon: Image.asset(
          AppImages.myAdsIcon,
          width: 30,
          height: 25,
        ),
        label: 'null',
      ),
      BottomNavigationBarItem(
        icon: GestureDetector(
          // onTap: () => context.pushRoute(CustomStepperRoute()),
          child: Container(
            width: 63,
            height: 63,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.cyanColor,
              boxShadow: [
                BoxShadow(
                  color: AppColors.cyanColor.withOpacity(0.1),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 0), // changes position of shadow
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(22),
              child: Image.asset(
                AppImages.plusIcon,
                width: 18,
                height: 18,
              ),
            ),
          ),
        ),
        label: 'null',
      ),
      BottomNavigationBarItem(
        icon: Image.asset(
          AppImages.messagesIcon,
          width: 25,
          height: 21,
        ),
        label: 'null',
      ),
      BottomNavigationBarItem(
        icon: Image.asset(
          AppImages.userDefaultIcon,
          width: 20,
          height: 22,
        ),
        label: 'null',
      ),
    ]);
  }
}
