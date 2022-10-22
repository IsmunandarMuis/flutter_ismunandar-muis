import 'package:flutter/material.dart';
import 'package:weekly_1_project/screens/home/home_screen.dart';
import 'package:weekly_1_project/services/user_service.dart';

import 'controllers/user_bloc/user_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => UserService(),
      child: BlocProvider(
        create: (context) => UserBloc(context.read<UserService>()),
        child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: HomeScreen(),
        ),
      ),
    );
  }
}
