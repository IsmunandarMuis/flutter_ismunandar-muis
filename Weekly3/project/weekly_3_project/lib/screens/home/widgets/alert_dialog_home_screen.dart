import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weekly_1_project/controllers/user_bloc/user_bloc.dart';
import 'package:weekly_1_project/models/user_model.dart';
import 'package:weekly_1_project/screens/list_user/list_user_screen.dart';
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
          child: Column(
            children: [
              BlocListener<UserBloc, UserState>(
                listener: (context, state) {
                  if (state is SuccessState) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const ListUserScreen()));

                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        duration: const Duration(seconds: 3),
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(defaultMargin),
                                topLeft: Radius.circular(defaultMargin))),
                        padding: const EdgeInsets.all(defaultMargin),
                        backgroundColor: successColor,
                        content: Text(
                          "Berhasil menambahkan data",
                          style: primaryTextStyle.copyWith(
                              fontSize: 16,
                              fontWeight: semiBold,
                              color: backgroundColor),
                        )));

                    context.read<UserBloc>().add(GetUserEvent());
                  }
                },
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                          side: BorderSide(color: primaryColor)),
                      minimumSize:
                          Size(MediaQuery.of(context).size.width / 2, 45),
                      primary: backgroundColor,
                    ),
                    onPressed: () {
                      final UserModel newDataUser = UserModel(
                          firstName: firstName,
                          lastName: lastName,
                          email: email,
                          message: message);

                      context
                          .read<UserBloc>()
                          .add(AddUserEvent(newDataUser: newDataUser));
                    },
                    child: BlocBuilder<UserBloc, UserState>(
                      builder: (context, state) {
                        if (state is LoadingState) {
                          return SizedBox(
                            height: 30,
                            width: 30,
                            child: Center(
                              child: CircularProgressIndicator(
                                color: primaryColor,
                              ),
                            ),
                          );
                        } else {
                          return Text(
                            "Add Data",
                            style: primaryTextStyle.copyWith(
                              fontSize: 15,
                              fontWeight: semiBold,
                            ),
                          );
                        }
                      },
                    )),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    minimumSize:
                        Size(MediaQuery.of(context).size.width / 2, 45),
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
            ],
          ),
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
