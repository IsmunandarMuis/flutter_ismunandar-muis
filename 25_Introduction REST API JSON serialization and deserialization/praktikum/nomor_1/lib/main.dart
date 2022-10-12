import 'package:flutter/material.dart';
import 'package:praktikum_section_25/bloc/user_bloc.dart';
import 'package:praktikum_section_25/screens/home_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'repositories/user_repository.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => UserRepository(),
      child: BlocProvider(
        create: (context) =>
            UserBloc(userRepository: context.read<UserRepository>()),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: HomeScreen(),
        ),
      ),
    );
  }
}
