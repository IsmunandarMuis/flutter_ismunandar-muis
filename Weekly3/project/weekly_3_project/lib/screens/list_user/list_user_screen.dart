import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weekly_1_project/controllers/user_bloc/user_bloc.dart';
import 'package:weekly_1_project/models/user_model.dart';
import 'package:weekly_1_project/screens/home/home_screen.dart';
import 'package:weekly_1_project/screens/theme.dart';

import 'widgets/card_list_user_screen.dart';

class ListUserScreen extends StatelessWidget {
  const ListUserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text(
          "Data User",
          style: primaryTextStyle.copyWith(fontWeight: bold),
        ),
      ),
      body: BlocBuilder<UserBloc, UserState>(builder: (context, state) {
        if (state is LoadingState) {
          return const Center(
            child: CircularProgressIndicator(
              color: Colors.greenAccent,
            ),
          );
        } else if (state is UserInitial) {
          List<UserModel>? allUser = state.userList;
          if (allUser!.isEmpty) {
            return Center(
              child: Text(
                "Data User Masih Kosong",
                style: secondaryTextStyle.copyWith(
                    fontSize: 18, fontWeight: semiBold),
              ),
            );
          } else {
            return Column(
              children: [
                Expanded(
                  child: ListView.builder(
                      shrinkWrap: true,
                      padding: const EdgeInsets.all(defaultMargin),
                      itemCount: allUser.length,
                      itemBuilder: (context, index) {
                        return CardListUserScreen(
                          user: allUser[index],
                          id: index + 1,
                        );
                      }),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeScreen()));
                  },
                  child: Container(
                    margin: const EdgeInsets.all(defaultMargin),
                    padding: const EdgeInsets.all(10),
                    height: 43,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.keyboard_double_arrow_left,
                          color: backgroundColor,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Back to home screen",
                          style: primaryTextStyle.copyWith(
                            fontSize: 14,
                            fontWeight: semiBold,
                            color: backgroundColor,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            );
          }
        } else if (state is ErrorState) {
          return Text(state.errorMessage);
        } else {
          return const SizedBox.shrink();
        }
      }),
    );
  }
}
