import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:praktikum_section_28/model/food_model.dart';

import 'home_view_model/home_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
        centerTitle: true,
      ),
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          if (state is LoadingDataState) {
            return const Center(
              child: CircularProgressIndicator(
                color: Colors.green,
              ),
            );
          } else if (state is LoadDataState) {
            List<FoodModel>? allFood = state.foodList;
            if (allFood!.isNotEmpty) {
              return Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: allFood.map((data) {
                    return Card(
                      margin: const EdgeInsets.only(bottom: 10),
                      child: ListTile(
                        title: Text(data.name),
                        trailing: Text(data.id.toString()),
                      ),
                    );
                  }).toList(),
                ),
              );
            } else {
              return const Center(
                child: Text("Data Kosong"),
              );
            }
          } else {
            return const Center(
              child: Text("Tidak ada Data"),
            );
          }
        },
      ),
    );
  }
}
