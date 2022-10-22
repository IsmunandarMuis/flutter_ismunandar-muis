import 'package:flutter/material.dart';
import 'package:weekly_1_project/screens/theme.dart';

class WelcomeBoardHomeScreen extends StatelessWidget {
  const WelcomeBoardHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Welcome Text",
          style: primaryTextStyle.copyWith(fontSize: 18, fontWeight: semiBold),
        ),
        Container(
          height: MediaQuery.of(context).size.height / 5,
          width: double.maxFinite,
          color: backgroundColor,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: const EdgeInsets.all(15),
                  height: MediaQuery.of(context).size.height / 7,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(18)),
                  child: Row(
                    children: [
                      Flexible(
                        child: Text(
                          "Di kelas ini kita akan belajar bersama mulai dari dasar untuk membangun aplikasi yang membantu masyarakat.",
                          style: primaryTextStyle.copyWith(
                            fontSize: 15,
                            fontWeight: semiBold,
                            color: backgroundColor,
                          ),
                          textAlign: TextAlign.justify,
                          maxLines: 4,
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                minimumSize: const Size(50, 40),
                                primary: backgroundColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                )),
                            onPressed: () {},
                            child: Row(
                              children: [
                                Text(
                                  "Details",
                                  style: primaryTextStyle.copyWith(
                                      color: primaryColor,
                                      fontWeight: semiBold,
                                      fontSize: 13),
                                ),
                                Icon(
                                  Icons.double_arrow,
                                  color: primaryColor,
                                  size: 28,
                                )
                              ],
                            )),
                      )
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.amber,
                    child: Image.asset("assets/bootcamp.png")),
              )
            ],
          ),
        )
      ],
    );
  }
}
