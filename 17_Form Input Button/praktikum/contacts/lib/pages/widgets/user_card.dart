import 'dart:math';

import 'package:flutter/material.dart';

class UserCard extends StatelessWidget {
  const UserCard(
      {Key? key,
      required this.phoneNumber,
      required this.username,
      required this.userInitialName})
      : super(key: key);

  final String username;
  final String phoneNumber;
  final String userInitialName;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 35),
      child: Row(
        children: [
          CircleAvatar(
            radius: 35,
            backgroundColor: Color.fromRGBO(Random().nextInt(255),
                Random().nextInt(255), Random().nextInt(255), 0.6),
            child: Center(
              child: Text(
                userInitialName,
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                username,
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.phone,
                    size: 20,
                    color: Colors.black54,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    phoneNumber,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.black38,
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
