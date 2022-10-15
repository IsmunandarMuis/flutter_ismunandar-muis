import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:praktikum_26/screen/contact/contact_screen.dart';

import 'model/api/contact_repository.dart';
import 'screen/contact/contact_view_model/contact_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => ContactRepository(),
      child: BlocProvider(
        create: (context) =>
            ContactBloc(context.read<ContactRepository>())..add(GetContact()),
        child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: ContactScreen(),
        ),
      ),
    );
  }
}
