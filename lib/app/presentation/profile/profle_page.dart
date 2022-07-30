import 'package:flutter/material.dart';
import 'package:wassiet/config/config.dart';
import 'package:wassiet/generated/l10n.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({
    Key? key,
    required this.isLoggedIn,
  }) : super(key: key);
  final bool isLoggedIn;
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 24.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundColor: widget.isLoggedIn ? AppColors.cyanColor : AppColors.transparentColor,
                    radius: 50,
                    backgroundImage: const NetworkImage(
                      'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                    ),
                    child: ClipRect(
                      child: widget.isLoggedIn
                          ? Stack(
                              alignment: Alignment.bottomRight,
                              textDirection: TextDirection.rtl,
                              fit: StackFit.loose,
                              clipBehavior: Clip.hardEdge,
                              children: [
                                Image.asset(
                                  AppImages.cameraIcon,
                                  width: 14,
                                  height: 14,
                                ),
                              ],
                            )
                          : Image.asset(
                              AppImages.userDefaultIcon,
                            ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 41),
                      child: widget.isLoggedIn
                          ? OutlinedButton(
                              onPressed: () {},
                              child: Text(
                                S.current.login,
                              ),
                            )
                          : Column(
                              children: const [
                                Text('أحمد بن طلال'),
                                Text('+923003213215'),
                              ],
                            ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
