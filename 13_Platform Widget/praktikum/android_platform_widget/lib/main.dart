import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChatPage(),
    );
  }
}

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff2f2f2),
      drawer: Drawer(
        backgroundColor: const Color(0xfff2f2f2),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              height: 250,
              width: double.infinity,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  "assets/forest.jpg",
                ),
              )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  CircleAvatar(
                    radius: 45,
                    child: Center(
                      child: Text(
                        "IM",
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Text(
                    "Ismunandar Muis",
                    style: TextStyle(
                        color: Color(0xfff2f2f2),
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "(+62) 82765271634",
                    style: TextStyle(color: Color(0xfff2f2f2)),
                  )
                ],
              ),
            ),
            ListView(
              padding: const EdgeInsets.all(20),
              shrinkWrap: true,
              children: [
                drawerMenu(icon: Icons.group, menuName: "New Group"),
                const Divider(),
                drawerMenu(icon: Icons.lock, menuName: "New Secret Chat"),
                const Divider(),
                drawerMenu(icon: Icons.notifications, menuName: "New Channel"),
                const SizedBox(
                  height: 50,
                ),
                drawerMenu(
                    icon: Icons.perm_contact_cal_sharp, menuName: "Contacts"),
                const Divider(),
                drawerMenu(icon: Icons.person_add, menuName: "Invite Friends"),
                const Divider(),
                drawerMenu(icon: Icons.settings, menuName: "Settings"),
                const Divider(),
                drawerMenu(icon: Icons.question_mark, menuName: "Telegram FAQ"),
              ],
            )
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: const Color(0xff53769f),
        title: const Text(
          "Telegram",
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(20),
            child: Icon(Icons.search),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            receiveMessage(
                initials: "HM",
                name: "Hermione",
                message: "Harry, help me",
                time: "7.22 PM",
                chatCount: 10),
            const Divider(),
            receiveMessage(
                initials: 'HP',
                name: 'Harry Potter',
                message: 'Hello Rown, how are you?',
                time: '7.00 AM',
                chatCount: 120),
            const Divider(),
            sendMessage(
                initials: "PM",
                name: "Pertamina",
                message: "Turunkan BBM",
                time: "1.40 PM"),
            const Divider(),
            readMessage(
                initials: "IM",
                name: "Indar",
                time: "4.25 AM",
                message: "Hei harry, can i help you?"),
            const Divider(),
            sendMessage(
                initials: "RW",
                name: "Rown Wesley",
                time: "5.00 AM",
                message: "Hei Haryy, please chat me now? I'm in danger!"),
            const Divider(),
            receiveMessage(
                initials: "DB",
                name: "Dumbledore",
                time: "6.00 PM",
                message: "Let's save rown harry",
                chatCount: 13),
            const Divider(),
            sendMessage(
                initials: "BU",
                name: "BUMN",
                message: "pppppp",
                time: "1.40 PM"),
            const Divider(),
            readMessage(
                initials: "PS",
                name: "Professor Snape",
                message: "I will take care of you harry",
                time: "8.22 PM"),
            const Divider(),
            sendMessage(
                initials: "IM",
                name: "Ismunandar",
                message: "This is my telegram not harry's telegram",
                time: "4.22 PM"),
            const Divider(),
            receiveMessage(
                initials: "GK",
                name: "Group Kampus",
                message: "[] Photo",
                time: "9.22 PM",
                chatCount: 80),
            const Divider(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xff53769f),
        child: const Icon(
          Icons.edit,
          size: 35,
        ),
      ),
    );
  }

  Widget drawerMenu({required IconData icon, required String menuName}) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(
              icon,
              size: 30,
              color: Colors.black54,
            ),
            const SizedBox(
              width: 30,
            ),
            Text(
              menuName,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Colors.black54,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget readMessage(
      {required String initials,
      required String name,
      required String message,
      required String time}) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(5),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: Color.fromRGBO(Random().nextInt(255),
                  Random().nextInt(255), Random().nextInt(255), 1),
              child: Center(
                child: Text(
                  initials,
                  style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      color: Color(0xfff2f2f2)),
                ),
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    message,
                    style: const TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: Colors.black54),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  )
                ],
              ),
            ),
            Text(
              time,
              style: const TextStyle(fontSize: 13, color: Colors.black54),
            ),
          ],
        ),
      ),
    );
  }

  Widget sendMessage(
      {required String initials,
      required String name,
      required String message,
      required String time}) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(5),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: Color.fromRGBO(Random().nextInt(255),
                  Random().nextInt(255), Random().nextInt(255), 1),
              child: Center(
                child: Text(
                  initials,
                  style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      color: Color(0xfff2f2f2)),
                ),
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    message,
                    style: const TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 15,
                      color: Colors.black54,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  )
                ],
              ),
            ),
            Row(
              children: const [
                Icon(
                  Icons.check,
                  color: Colors.black54,
                ),
                Text(
                  "4.20 PM",
                  style: TextStyle(fontSize: 13, color: Colors.black54),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget receiveMessage(
      {required String initials,
      required String name,
      required String message,
      required String time,
      required int chatCount}) {
    return Container(
      padding: const EdgeInsets.all(5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: Color.fromRGBO(Random().nextInt(255),
                Random().nextInt(255), Random().nextInt(255), 1),
            child: Center(
              child: Text(
                initials,
                style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    color: Color(0xfff2f2f2)),
              ),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  message,
                  style: const TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 15,
                      color: Colors.black54),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                )
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                time,
                style: const TextStyle(fontSize: 13),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                height: 30,
                width: 30,
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                  color: Colors.green[300],
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Text(
                    (chatCount > 99) ? "99+" : "$chatCount",
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
