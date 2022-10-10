import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/pages/home_page.dart';
import 'package:provider_state_management/pages/register_page.dart';
import 'package:provider_state_management/providers/auth_proivder.dart';
import 'package:provider_state_management/providers/user_provider.dart';
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
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => AuhtProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => UserProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: checkLogin ? const HomePage() : const RegisterPage(),
      ),
    );
  }
}
