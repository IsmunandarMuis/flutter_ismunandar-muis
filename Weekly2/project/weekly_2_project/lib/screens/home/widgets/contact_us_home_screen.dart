import 'package:flutter/material.dart';
import 'package:weekly_1_project/screens/theme.dart';

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

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
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
                if (value == null || value.isEmpty) {
                  return "Data can't be empty !";
                }
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
                if (value == null || value.isEmpty) {
                  return "Data can't be empty !";
                }
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
                  return "Enter valid email";
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
              maxLength: 150,
              maxLines: 5,
              controller: messageController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Data can't be empty !";
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
                minimumSize: Size(MediaQuery.of(context).size.width / 2, 40),
                primary: primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                )),
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialogHomeScreen(
                        firstName: firstNameController.text,
                        lastName: lastNameController.text,
                        email: emailController.text,
                        message: messageController.text,
                      );
                    });
              }
            },
            child: Text(
              "Submit",
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
                color: backgroundColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}

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
                "Message Message: " + message,
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
