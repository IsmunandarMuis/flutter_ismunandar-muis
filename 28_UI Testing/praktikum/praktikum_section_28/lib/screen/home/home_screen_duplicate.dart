import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:praktikum_section_28/model/food_model.dart';

import 'home_view_model/home_bloc.dart';

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
                title: Text("data.name"),
                trailing: Text("data.id"),
              ),
            )
          ]),
        ));
  }
}
