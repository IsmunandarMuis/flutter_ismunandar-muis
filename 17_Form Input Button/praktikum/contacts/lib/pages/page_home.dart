import 'package:contacts/data/data_user.dart';
import 'package:contacts/pages/page_create_contact.dart';
import 'package:contacts/pages/widgets/user_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final dataUser = DataUser();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff6f6f6),
      appBar: AppBar(
        title: const Text(
          "Contacts",
          style: TextStyle(
            color: Colors.black54,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        elevation: 1,
        backgroundColor: const Color(0xfff6f6f6),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: FutureBuilder(
            future: dataUser.getDataUser(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.hasData) {
                  var data = snapshot.data as List;
                  return ListView.builder(
                      itemCount: data.length,
                      itemBuilder: (context, index) {
                        return UserCard(
                            phoneNumber: data[index]['phone_number'],
                            username: data[index]['username'],
                            userInitialName:
                                data[index]['username'].toString()[0]);
                      });
                } else {
                  return const Center(
                    child: Text("Belum ada data"),
                  );
                }
              } else {
                return const Center(
                  child: CircularProgressIndicator(
                    color: Colors.green,
                  ),
                );
              }
            }),
      ),
      floatingActionButton: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.transparent),
        ),
        padding: const EdgeInsets.all(20),
        child: FloatingActionButton(
          elevation: 1,
          backgroundColor: Colors.green[400],
          onPressed: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => PageCreateContact()));
          },
          child: const Icon(
            Icons.add,
            size: 40,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
