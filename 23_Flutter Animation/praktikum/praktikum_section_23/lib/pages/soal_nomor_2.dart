import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ImageAnimation extends StatefulWidget {
  ImageAnimation({Key? key}) : super(key: key);

  @override
  State<ImageAnimation> createState() => _ImageAnimationState();
}

class _ImageAnimationState extends State<ImageAnimation> {
  double? height;

  double? width;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              height: height ?? 100,
              width: width ?? 100,
              decoration: BoxDecoration(
                color: Color.fromRGBO(Random().nextInt(255),
                    Random().nextInt(255), Random().nextInt(255), 1),
                borderRadius: BorderRadius.circular(15),
              ),
              duration: const Duration(milliseconds: 500),
            ),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            height = Random().nextInt(250).toDouble();
            width = Random().nextInt(250).toDouble();
          });
        },
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
