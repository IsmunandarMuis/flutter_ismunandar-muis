import 'package:flutter/material.dart';
import 'package:listview_widget/user_card.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> dataUser = [
    {
      "user_id": "1-770-736-8031 x56442",
      "user_first_name": "Leanne",
      "user_last_name": "Graham",
    },
    {
      "user_id": "010-692-6593 x09125",
      "user_first_name": "Ervin",
      "user_last_name": "Howell",
    },
    {
      "user_id": "1-463-123-447",
      "user_first_name": "Clementine",
      "user_last_name": "Bauch",
    },
    {
      "user_id": "493-170-9623 x156",
      "user_first_name": "Particia",
      "user_last_name": "Lebsack",
    },
    {
      "user_id": "(254)954-1289",
      "user_first_name": "Chelsey",
      "user_last_name": "Dietrich",
    },
    {
      "user_id": "1-447-935-8478 x6430",
      "user_first_name": "Mrs",
      "user_last_name": "Dennis Schulist",
    },
    {
      "user_id": "210.067.6132",
      "user_first_name": "Kurtis",
      "user_last_name": "Weissnat",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Json ListView In Fltter"),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView.builder(
            itemCount: dataUser.length,
            itemBuilder: (context, index) {
              return UserCard(
                  userId: dataUser[index]['user_id'],
                  userFirstName: dataUser[index]['user_first_name'],
                  userLastName: dataUser[index]['user_last_name'],
                  userInitialName:
                      (dataUser[index]['user_first_name']).toString()[0]);
            }),
      ),
    );
  }
}
