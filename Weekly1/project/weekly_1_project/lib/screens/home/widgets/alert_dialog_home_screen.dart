import 'package:flutter/material.dart';
import 'package:weekly_1_project/screens/theme.dart';

class AlertDialogHomeScreen extends StatelessWidget {
  const AlertDialogHomeScreen({
    Key? key,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.message,
  }) : super(key: key);

  final String firstName;
  final String lastName;
  final String email;
  final String message;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      actionsPadding: const EdgeInsets.symmetric(vertical: 15),
      titlePadding: const EdgeInsets.symmetric(vertical: 15),
      contentPadding: const EdgeInsets.symmetric(horizontal: 15),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      backgroundColor: backgroundColor,
      title: const Center(child: Text("Data Input Form")),
      actions: [
        Center(
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                minimumSize: Size(MediaQuery.of(context).size.width / 2, 45),
                primary: primaryColor,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Close",
                  style: primaryTextStyle.copyWith(
                    fontSize: 15,
                    fontWeight: semiBold,
                    color: backgroundColor,
                  ))),
        ),
      ],
      content: Container(
        height: MediaQuery.of(context).size.height / 5,
        padding: const EdgeInsets.all(5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "First Name : " + firstName,
              style: primaryTextStyle.copyWith(
                fontSize: 15,
                fontWeight: medium,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              "Last Name : " + lastName,
              style: primaryTextStyle.copyWith(
                fontSize: 15,
                fontWeight: medium,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              "Email : " + email,
              style: primaryTextStyle.copyWith(
                fontSize: 15,
                fontWeight: medium,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
            const SizedBox(
              height: 5,
            ),
            Flexible(
              child: Text(
                "Message : " + message,
                style: primaryTextStyle.copyWith(
                  fontSize: 15,
                  fontWeight: medium,
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 4,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
