import 'package:flutter/cupertino.dart';
import 'package:ios_platform_widget/calls_page.dart';
import 'package:ios_platform_widget/chats_page.dart';
import 'package:ios_platform_widget/contacts_page.dart';
import 'package:ios_platform_widget/settings_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentTabIndex = 0;

  onTapped(int index) {
    setState(() {
      currentTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: CupertinoTabScaffold(
          tabBar: CupertinoTabBar(
              backgroundColor: const Color(0xfff6f6f6),
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(
                      CupertinoIcons.person_circle_fill,
                    ),
                    label: "Contacts"),
                BottomNavigationBarItem(
                    icon: Icon(
                      CupertinoIcons.phone_circle_fill,
                    ),
                    label: "Calls"),
                BottomNavigationBarItem(
                    icon: Icon(
                      CupertinoIcons.chat_bubble_2_fill,
                    ),
                    label: "Chats"),
                BottomNavigationBarItem(
                    icon: Icon(
                      CupertinoIcons.settings,
                    ),
                    label: "Settings"),
              ]),
          tabBuilder: (context, index) {
            switch (index) {
              case 0:
                return const ContactsPage();
              case 1:
                return const CallsPage();
              case 2:
                return const ChatsPage();
              case 3:
                return const SettingsPage();
              default:
                return const ContactsPage();
            }
          }),
    );
  }
}
