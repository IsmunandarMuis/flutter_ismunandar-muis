import 'package:flutter/material.dart';

class UserCard extends StatelessWidget {
  const UserCard(
      {Key? key,
      required this.userId,
      required this.userFirstName,
      required this.userLastName,
      required this.userInitialName})
      : super(key: key);

  final String userFirstName;
  final String userLastName;
  final String userId;
  final String userInitialName;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 35),
      child: Row(
        children: [
          CircleAvatar(
            radius: 35,
            backgroundColor: const Color(0xff66a958),
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
                userFirstName + " " + userLastName,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                userId,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.black38,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
