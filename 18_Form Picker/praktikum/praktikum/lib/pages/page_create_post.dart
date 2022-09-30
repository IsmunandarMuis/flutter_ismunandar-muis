import 'dart:io';

import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:praktikum/pages/page_preview_post.dart';

class PageCreatePost extends StatefulWidget {
  PageCreatePost({Key? key}) : super(key: key);

  @override
  State<PageCreatePost> createState() => _PageCreatePostState();
}

class _PageCreatePostState extends State<PageCreatePost> {
  final List<Map<String, dynamic>> listColor = [
    {
      "colorName": "Red",
      "colorHexa": 0xffD2001A,
    },
    {
      "colorName": "Blue",
      "colorHexa": 0xff25316D,
    },
    {
      "colorName": "Pink",
      "colorHexa": 0xffF96666,
    },
    {
      "colorName": "Green",
      "colorHexa": 0xff367E18,
    },
  ];

  late TextEditingController dateController;
  late TextEditingController captionController;
  late Map<String, dynamic> dataColor;
  late Color currentColor;
  File? file;

  @override
  void initState() {
    dateController = TextEditingController();
    captionController = TextEditingController();
    dataColor = {};
    currentColor = Color(0xffff);
    super.initState();
  }

  @override
  void dispose() {
    dateController.clear();
    captionController.clear();
    dataColor = {};
    super.dispose();
  }

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
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            Text("Cover",
                style: TextStyle(fontSize: 18, color: Colors.black87)),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                pickImage();
              },
              child: Container(
                width: double.infinity,
                height: 40,
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Text(
                    (file == null) ? "Pilih File" : file!.path,
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text("Publish At",
                style: TextStyle(fontSize: 18, color: Colors.black87)),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: dateController,
              readOnly: true,
              onChanged: (value) {
                dateController.text = value;
              },
              onTap: () async {
                DateTime? date = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2025),
                );

                if (date != null) {
                  // print(date);
                  String getDate = DateFormat('dd/MM/yyyy').format(date);
                  dateController.text = getDate;
                  print(dateController.text);
                } else {}
              },
              decoration: InputDecoration(
                  hintText: "dd/mm/yyyy",
                  contentPadding: EdgeInsets.all(12),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
            SizedBox(
              height: 20,
            ),
            Text("Color Theme",
                style: TextStyle(fontSize: 18, color: Colors.black87)),
            SizedBox(
              height: 10,
            ),
            TextField(
              readOnly: true,
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                          title: Text("Pick a color"),
                          content: SingleChildScrollView(
                            child: ColorPicker(
                                pickerColor: currentColor,
                                onColorChanged: (color) {
                                  setState(() {
                                    currentColor = color;
                                  });
                                }),
                          ),
                        ));
              },
              decoration: InputDecoration(
                  hintText: "Pick a color",
                  fillColor: currentColor,
                  filled: true,
                  contentPadding: EdgeInsets.all(12),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
            SizedBox(
              height: 20,
            ),
            Text("Caption",
                style: TextStyle(fontSize: 18, color: Colors.black87)),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: captionController,
              maxLines: 10,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              )),
            )
            // (file == null) ? const SizedBox() : Image.file(file!),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.all(20),
        height: 50,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12))),
            onPressed: () {
              print(captionController.text);
              print(dateController.text);
              print(dataColor);
              print(file);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (
                    context,
                  ) =>
                      PagePreviewPost(
                          imageFIle: file!,
                          date: dateController.text,
                          selectionColor: currentColor,
                          caption: captionController.text),
                ),
              );
            },
            child: Text(
              "Submit",
              style: TextStyle(color: Colors.white, fontSize: 18),
            )),
      ),
    );
  }

  Future pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);

      if (image == null) {
        return;
      }
      final tempImage = File(image.path);

      setState(() {
        file = tempImage;
        print(file);
      });
    } on PlatformException catch (e) {
      print("failed get image" + e.message.toString());
    }
  }
}
