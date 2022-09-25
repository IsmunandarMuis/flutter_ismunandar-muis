import 'package:flutter/material.dart';
import 'package:materi_assets/data_image.dart';
import 'package:materi_assets/show_image_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List Image"),
      ),
      body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: GridView.builder(
              itemCount: DataImage.listImage.length,
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 150,
                childAspectRatio: 1,
                crossAxisSpacing: 45,
                mainAxisSpacing: 45,
              ),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ShowImagePage(
                              imageUrl: DataImage.listImage[index]['image_url'],
                            )));
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.network(
                      DataImage.listImage[index]['image_url'],
                      height: 100,
                      width: 100,
                    ),
                  ),
                );
              })),
    );
  }
}
