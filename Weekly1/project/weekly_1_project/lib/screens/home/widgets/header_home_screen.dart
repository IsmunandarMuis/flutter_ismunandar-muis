import 'package:flutter/material.dart';
import 'package:weekly_1_project/screens/theme.dart';

class HeaderHomeScreen extends StatelessWidget {
  const HeaderHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 25,
          backgroundColor: primaryColor,
          child: Icon(
            Icons.person,
            color: backgroundColor,
            size: 40,
          ),
        ),
        const SizedBox(
          width: defaultMargin,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Ismunandar Muis",
              style:
                  primaryTextStyle.copyWith(fontWeight: semiBold, fontSize: 18),
            ),
            Text(
              "Flutter Weekly Task 1",
              style: secondaryTextStyle.copyWith(
                  fontWeight: medium, fontStyle: FontStyle.italic),
            ),
          ],
        ),
      ],
    );
  }
}
