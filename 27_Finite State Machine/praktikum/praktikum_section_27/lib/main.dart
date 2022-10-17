import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:praktikum_section_27/model/api/food_api.dart';
import 'package:praktikum_section_27/screen/home/home_screen.dart';
import 'package:praktikum_section_27/screen/home/home_view_model/home_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(create: (context) => FoodApi()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BlocProvider(
          create: (context) =>
              HomeBloc(context.read<FoodApi>())..add(LoadDataEvent()),
          child: const HomeScreen(),
        ),
      ),
    );
  }
}
