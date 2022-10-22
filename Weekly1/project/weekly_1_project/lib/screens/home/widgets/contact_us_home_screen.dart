import 'package:flutter/material.dart';
import 'package:weekly_1_project/screens/theme.dart';

import 'alert_dialog_home_screen.dart';

class ContactUsHomeScreen extends StatefulWidget {
  const ContactUsHomeScreen({Key? key}) : super(key: key);

  @override
  State<ContactUsHomeScreen> createState() => _ContactUsHomeScreenState();
}

late TextEditingController firstNameController;
late TextEditingController lastNameController;
late TextEditingController emailController;
late TextEditingController messageController;

class _ContactUsHomeScreenState extends State<ContactUsHomeScreen> {
  @override
  void initState() {
    firstNameController = TextEditingController();
    lastNameController = TextEditingController();
    emailController = TextEditingController();
    messageController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Contact Us",
          style: primaryTextStyle.copyWith(
            fontSize: 18,
            fontWeight: semiBold,
          ),
        ),
        const SizedBox(
          height: defaultMargin,
        ),
        TextFormField(
            controller: firstNameController,
            validator: (value) {
              return null;
            },
            decoration: InputDecoration(
                label: Text(
                  "First Name",
                  style: secondaryTextStyle,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ))),
        const SizedBox(
          height: defaultMargin,
        ),
        TextFormField(
            controller: lastNameController,
            validator: (value) {
              return null;
            },
            decoration: InputDecoration(
                label: Text(
                  "Last Name",
                  style: secondaryTextStyle,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ))),
        const SizedBox(
          height: defaultMargin,
        ),
        TextFormField(
            controller: emailController,
            validator: (value) {
              var regex = RegExp(r"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$");
              if (!regex.hasMatch(value.toString())) {
                return "Email tidak valid";
              }
              return null;
            },
            decoration: InputDecoration(
                label: Text(
                  "Email",
                  style: secondaryTextStyle,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ))),
        const SizedBox(
          height: defaultMargin,
        ),
        TextFormField(
            controller: messageController,
            maxLines: 5,
            maxLength: 150,
            validator: (value) {
              if (value!.isEmpty) {
                return "Data harus";
              }
              return null;
            },
            decoration: InputDecoration(
                label: Text(
                  "What can we help you with?",
                  style: secondaryTextStyle,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ))),
        const SizedBox(
          height: 30,
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              minimumSize: Size(MediaQuery.of(context).size.width / 2, 45),
              primary: primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              )),
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialogHomeScreen(
                      firstName: firstNameController.text,
                      lastName: lastNameController.text,
                      email: emailController.text,
                      message: messageController.text);
                });
          },
          child: Text(
            "Submit",
            style: primaryTextStyle.copyWith(
              fontSize: 18,
              fontWeight: semiBold,
              color: backgroundColor,
            ),
          ),
        )
      ],
    );
  }
}
