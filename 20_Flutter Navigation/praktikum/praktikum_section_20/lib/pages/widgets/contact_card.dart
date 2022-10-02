import 'package:flutter/material.dart';

class ContactCard extends StatelessWidget {
  const ContactCard({
    Key? key,
    required this.phoneNumber,
    required this.userFirstName,
    required this.userLastName,
  }) : super(key: key);

  final String userFirstName;
  final String userLastName;
  final String phoneNumber;

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
                userFirstName[0] + userLastName[0],
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
                phoneNumber,
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
