import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static final List<Map<String, dynamic>> listImage = [
    {
      "image_id": 1,
      "image_url":
          "https://i.picsum.photos/id/494/200/200.jpg?hmac=U0wPc_GayOgCTqCyWzhy9Cc_mj8wZEPjLdqILTEl4AM",
    },
    {
      "image_id": 2,
      "image_url":
          "https://i.picsum.photos/id/862/500/500.jpg?hmac=60wKtDjaw_q3sAe-knvHXPsQcfGdObOi4UkYYlS_gHw",
    },
    {
      "image_id": 3,
      "image_url":
          "https://i.picsum.photos/id/324/500/500.jpg?hmac=Wo4tkWiPecv0kDRnJEHbQ0Cl_ZIKCKwYJs_CSHlc_ps",
    },
    {
      "image_id": 4,
      "image_url":
          "https://i.picsum.photos/id/565/500/500.jpg?hmac=1qOIgjuXGDfqpp6xKeP1ssJuRQwU8JcOcULnFGTaePU",
    },
    {
      "image_id": 5,
      "image_url":
          "https://i.picsum.photos/id/77/500/500.jpg?hmac=tSoa4RHbrWHe6CfA-uOJZpiHj-3e9OoYJ91vBlFaMD8",
    },
    {
      "image_id": 6,
      "image_url":
          "https://i.picsum.photos/id/755/500/500.jpg?hmac=MayrmcpRM9aFlitPcekVGd8gu7OwUlrBKNIVvq35i4w",
    },
    {
      "image_id": 7,
      "image_url":
          "https://i.picsum.photos/id/701/500/500.jpg?hmac=GMTZzuRCXLqC2bviO7vBkD8IglF-b7GGxhm8Qs2zF_I",
    },
    {
      "image_id": 8,
      "image_url":
          "https://i.picsum.photos/id/653/500/500.jpg?hmac=J4MoZHjGsGM8mvgmum6kLofXsaTT-ercsd_kiHz_oYM",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Section 19"),
        centerTitle: true,
      ),
      body: Center(
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            const Text(
              "1. Click to show in bottom sheet",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "2. Hold to show in dialog",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            GridView.builder(
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemCount: listImage.length,
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 250,
                  mainAxisExtent: 250,
                  childAspectRatio: 80 / 80,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                ),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20))),
                          context: context,
                          builder: (context) => Container(
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20)),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            listImage[index]['image_url']),
                                        fit: BoxFit.cover)),
                              ));
                    },
                    onLongPressStart: (detail) {
                      showDialog(
                          context: (context),
                          builder: (builder) {
                            return AlertDialog(
                              content: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image.network(
                                  listImage[index]['image_url'],
                                  height: 500,
                                  width: 500,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              actionsPadding: const EdgeInsets.all(10),
                              actions: [
                                Center(
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          minimumSize: Size(300, 40),
                                          padding: const EdgeInsets.all(10),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                          )),
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: const Text("Back")),
                                ),
                              ],
                            );
                          });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              image:
                                  NetworkImage(listImage[index]['image_url']),
                              fit: BoxFit.cover)),
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}
