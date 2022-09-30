import 'dart:io';

import 'package:flutter/material.dart';

class PagePreviewPost extends StatelessWidget {
  PagePreviewPost(
      {Key? key,
      required this.imageFIle,
      required this.date,
      required this.selectionColor,
      required this.caption})
      : super(key: key);
  final File imageFIle;
  final String date;
  final Color selectionColor;
  final String caption;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.list),
        title: Text(
          "Create Post",
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Image.file(
              imageFIle,
              height: 300,
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Published : $date",
                  style: TextStyle(color: Colors.black38, fontSize: 15),
                ),
                Row(
                  children: [
                    Text(
                      "Color",
                      style: TextStyle(color: Colors.black38, fontSize: 15),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: selectionColor),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Center(
                child: Text(
              caption,
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ))
          ],
        ),
      ),
    );
  }
}
