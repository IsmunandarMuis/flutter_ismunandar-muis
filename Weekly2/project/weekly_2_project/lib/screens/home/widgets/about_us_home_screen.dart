import 'package:flutter/material.dart';
import 'package:weekly_1_project/screens/theme.dart';

class AboutUsHomeScreen extends StatelessWidget {
  const AboutUsHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "About Us",
          style: primaryTextStyle.copyWith(fontSize: 18, fontWeight: semiBold),
        ),
        Text(
          "Flutter Bootcamp Academy",
          style: primaryTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
        ),
        const SizedBox(
          height: defaultMargin,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width / 2 - defaultMargin - 10,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(5),
                      bottomRight: Radius.circular(5),
                      bottomLeft: Radius.circular(5)),
                  boxShadow: [
                    BoxShadow(
                        spreadRadius: 0.5,
                        blurRadius: 2,
                        color: primaryColor,
                        blurStyle: BlurStyle.outer,
                        offset: const Offset(1.5, 1))
                  ]),
              child: Column(
                children: [
                  Row(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: CircleAvatar(
                          radius: 10,
                          backgroundColor: primaryColor,
                          child: Center(
                            child: Icon(
                              Icons.circle,
                              size: 20,
                              color: backgroundColor,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Immersive Program",
                        style: primaryTextStyle.copyWith(
                            fontSize: 13, fontWeight: bold),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Flexible(
                    child: Text(
                        "Lorem ipsum dolor sit amet consectetur, adipisicing elit. Consectetur, ullam. Libero voluptatibus laudantium totam voluptatum non adipisci sunt, consequatur praesentium.",
                        style: primaryTextStyle.copyWith(
                          fontSize: 12,
                        ),
                        maxLines: 10,
                        textAlign: TextAlign.justify,
                        overflow: TextOverflow.ellipsis),
                  )
                ],
              ),
            ),
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width / 2 - defaultMargin - 10,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(5),
                      bottomRight: Radius.circular(5),
                      bottomLeft: Radius.circular(5)),
                  boxShadow: [
                    BoxShadow(
                        spreadRadius: 0.5,
                        blurRadius: 2,
                        color: primaryColor,
                        blurStyle: BlurStyle.outer,
                        offset: const Offset(1.5, 1))
                  ]),
              child: Column(
                children: [
                  Row(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: CircleAvatar(
                          radius: 10,
                          backgroundColor: primaryColor,
                          child: Center(
                            child: Icon(
                              Icons.circle,
                              size: 20,
                              color: backgroundColor,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Job Connector",
                        style: primaryTextStyle.copyWith(
                            fontSize: 13, fontWeight: bold),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Flexible(
                    child: Text(
                        "Lorem ipsum, dolor sit amet consectetur adipisicing elit. At inventore sint delectus. Dolore repudiandae impedit placeat quibusdam tenetur nemo ipsum?",
                        style: primaryTextStyle.copyWith(
                          fontSize: 12,
                        ),
                        maxLines: 10,
                        textAlign: TextAlign.justify,
                        overflow: TextOverflow.ellipsis),
                  )
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
