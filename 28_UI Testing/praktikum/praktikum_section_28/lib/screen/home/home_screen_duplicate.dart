import 'package:flutter/material.dart';

class HomeScreenDuplicate extends StatelessWidget {
  const HomeScreenDuplicate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Home Screen"),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(children: const [
            Card(
              margin: EdgeInsets.only(bottom: 10),
              child: ListTile(
                title: Text("Nama"),
                trailing: Text("ID"),
              ),
            )
          ]),
        ));
  }
}
