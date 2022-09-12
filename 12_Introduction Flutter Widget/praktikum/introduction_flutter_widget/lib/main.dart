import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int? initSecond = 0;
  int? initMinute = 0;
  int? initHours = 0;

  String secondDigit = "00";
  String minuteDigit = "00";
  String hoursDigit = "00";

  Timer? timer;

  @override
  void initState() {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      int second = initSecond! + 1;
      int minute = initMinute!;
      int hours = initHours!;

      if (second > 59) {
        if (minute > 59) {
          hours++;
          minute = 0;
        } else {
          minute++;
          second = 0;
        }
      }
      setState(() {
        initSecond = second;
        initMinute = minute;
        initHours = hours;

        secondDigit = (initSecond! >= 10) ? "$initSecond" : "0$initSecond";
        minuteDigit = (initMinute! >= 10) ? "$initMinute" : "0$initMinute";
        hoursDigit = (initHours! >= 10) ? "$initHours" : "0$initHours";
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Widget"),
      ),
      body: Center(
        child: timerValue(
            second: secondDigit, minute: minuteDigit, hours: hoursDigit),
      ),
    );
  }

  Text timerValue(
      {required String second, required String minute, required String hours}) {
    return Text(
      "$hours : $minute : $second",
      style: const TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
    );
  }
}
