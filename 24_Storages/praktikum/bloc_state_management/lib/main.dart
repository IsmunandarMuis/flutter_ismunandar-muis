import 'package:bloc_state_management/bloc/auth_bloc.dart';
import 'package:bloc_state_management/bloc/user_bloc.dart';
import 'package:bloc_state_management/pages/home_page.dart';
import 'package:bloc_state_management/pages/register_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  var email = prefs.getString('email');
  print(email);
  runApp(MyApp(
    checkLogin: (email != null) ? true : false,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key, required this.checkLogin}) : super(key: key);

  final bool checkLogin;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => AuthBloc()),
        BlocProvider(create: (_) => UserBloc()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: checkLogin ? const HomePage() : const RegisterPage(),
      ),
    );
  }
}
