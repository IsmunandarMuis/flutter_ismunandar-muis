import 'package:flutter/cupertino.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      theme: CupertinoThemeData(brightness: Brightness.light),
      home: CupertinoPageScaffold(
          navigationBar: CupertinoNavigationBar(
            leading: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Edit",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.blue,
                ),
              ),
            ),
            middle: Text("Chats"),
            trailing: Icon(
              CupertinoIcons.barcode_viewfinder,
              size: 30,
            ),
          ),
          child: SizedBox()),
    );
  }
}
