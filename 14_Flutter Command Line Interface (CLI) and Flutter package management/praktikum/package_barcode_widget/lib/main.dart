import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ScanBarcodePage(),
    );
  }
}

class ScanBarcodePage extends StatelessWidget {
  const ScanBarcodePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scan Barcode'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Alterra Academy",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            BarcodeWidget(
              barcode: Barcode.aztec(),
              data:
                  'https://alta.id/courses/mastering-flutter-from-zero-to-hero/35766/',
              width: 200,
              height: 200,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Flutter Asik",
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              "Ismunandar Muis",
              style: TextStyle(fontSize: 15),
            ),
          ],
        ),
      ),
    );
  }
}
