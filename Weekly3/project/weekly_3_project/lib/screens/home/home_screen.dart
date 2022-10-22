import 'package:flutter/material.dart';
import 'package:weekly_1_project/screens/home/widgets/about_us_home_screen.dart';
import 'package:weekly_1_project/screens/home/widgets/contact_us_home_screen.dart';
import 'package:weekly_1_project/screens/home/widgets/header_home_screen.dart';
import 'package:weekly_1_project/screens/home/widgets/welcome_board_home_screen.dart';
import 'package:weekly_1_project/screens/theme.dart';

import 'widgets/drawer_home_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        endDrawer: const DrawerHomeScreen(),
        backgroundColor: backgroundColor,
        body: ListView(
          padding: const EdgeInsets.all(defaultMargin),
          children: const [
            HeaderHomeScreen(),
            SizedBox(
              height: 50,
            ),
            WelcomeBoardHomeScreen(),
            SizedBox(
              height: 30,
            ),
            ContactUsHomeScreen(),
            SizedBox(
              height: 50,
            ),
            AboutUsHomeScreen()
          ],
        ),
      ),
    );
  }
}
