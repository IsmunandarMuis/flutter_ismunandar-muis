import 'package:flutter/material.dart';
import 'package:weekly_1_project/models/user_model.dart';
import 'package:weekly_1_project/screens/theme.dart';

class CardListUserScreen extends StatelessWidget {
  const CardListUserScreen({
    Key? key,
    required this.user,
    required this.id,
  }) : super(key: key);

  final UserModel user;
  final int id;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 15),
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: ListTile(
        title: Text(user.firstName + " " + user.lastName),
        subtitle: Text(user.email),
        trailing: Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
            color: primaryColor,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Text(
              "$id",
              style: primaryTextStyle.copyWith(
                fontWeight: semiBold,
                color: backgroundColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
