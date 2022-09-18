import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatsPage extends StatelessWidget {
  const ChatsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        border: Border.all(color: const Color(0xfff6f6f6), width: 0),
        trailing: const Icon(
          CupertinoIcons.arrow_2_squarepath,
          color: CupertinoColors.activeBlue,
        ),
        leading: const Text(
          "Edit",
          style: TextStyle(
            color: CupertinoColors.activeBlue,
          ),
        ),
        middle: Column(
          children: const [
            Text(
              "Chats",
              style: TextStyle(
                color: CupertinoColors.black,
                fontSize: 18,
              ),
            ),
          ],
        ),
        backgroundColor: const Color(0xfff6f6f6),
        padding: const EdgeInsetsDirectional.only(
            top: 10, bottom: 10, end: 20, start: 20),
      ),
      backgroundColor: const Color(0xfff6f6f6),
      child: Column(
        children: [
          Container(
            margin:
                const EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 0),
            color: const Color(0xfff6f6f6),
            height: 50,
            width: double.infinity,
            child: CupertinoSearchTextField(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color(0xffe9e9e9)),
              padding: const EdgeInsets.all(15),
              prefixIcon: const Icon(
                CupertinoIcons.search,
                color: Color(0xffb6b6b6),
              ),
            ),
          ),
          Container(
            padding:
                const EdgeInsets.only(left: 25, right: 25, top: 15, bottom: 15),
            child: SingleChildScrollView(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Text(
                    "All chats",
                    style: TextStyle(
                      color: Color(0xffb6b6b6),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Work",
                    style: TextStyle(
                      color: Color(0xffb6b6b6),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Unread",
                    style: TextStyle(
                      color: Color(0xff207add),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Personal",
                    style: TextStyle(
                      color: Color(0xffb6b6b6),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: CupertinoColors.white,
                  border:
                      Border.all(color: const Color(0xffb6b6b6), width: 0.5)),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: ListView(
                  children: [
                    receiveMessage(
                        initials: "HM",
                        name: "Hermione",
                        message: "Harry, help me",
                        time: "7.22 PM",
                        chatCount: 20),
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
                        message:
                            "Hei Haryy, please chat me now? I'm in danger!"),
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
            ),
          ),
        ],
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
                        color: Color(0xffb6b6b6)),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  )
                ],
              ),
            ),
            Text(
              time,
              style: const TextStyle(fontSize: 13, color: Color(0xffb6b6b6)),
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
                      color: Color(0xffb6b6b6),
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
                  CupertinoIcons.check_mark,
                  color: Color(0xffb6b6b6),
                ),
                Text(
                  "4.20 PM",
                  style: TextStyle(fontSize: 13, color: Color(0xffb6b6b6)),
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
                      color: Color(0xffb6b6b6)),
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
                decoration: const BoxDecoration(
                  color: Color(0xff207add),
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Text(
                    (chatCount > 99) ? "99+" : "$chatCount",
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      color: CupertinoColors.white,
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
