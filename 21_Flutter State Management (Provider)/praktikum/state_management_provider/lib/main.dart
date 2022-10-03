import 'package:flutter/material.dart';
import 'package:parktikum_section_21/provider/contact_provider.dart';
import 'package:provider/provider.dart';

import 'pages/contacts_page.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ContactProvider(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ContactsPage(),
    );
  }
}
