import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final List<IconData> listIcon = [
    Icons.pets,
    Icons.location_city,
    Icons.person,
    Icons.catching_pokemon,
    Icons.ac_unit_rounded,
    Icons.accessibility_new_outlined,
    Icons.check_circle,
    Icons.circle_notifications,
    Icons.run_circle_outlined,
    Icons.play_circle_filled_sharp,
    Icons.stop_circle_outlined,
    Icons.arrow_circle_right_outlined,
    Icons.blur_circular_rounded,
    Icons.swap_vertical_circle_outlined,
    Icons.arrow_drop_down_circle_outlined,
    Icons.change_circle,
    Icons.cloud_circle_rounded,
    Icons.pause_circle_outlined,
    Icons.accessible_forward_rounded,
    Icons.arrow_drop_down_circle_outlined,
    Icons.change_circle,
    Icons.play_circle_filled_sharp,
    Icons.stop_circle_outlined,
    Icons.arrow_circle_right_outlined,
    Icons.blur_circular_rounded,
    Icons.swap_vertical_circle_outlined,
    Icons.arrow_drop_down_circle_outlined,
    Icons.change_circle,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "GridView",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
        ),
      ),
      body: Container(
          padding: const EdgeInsets.all(20),
          child: GridView.builder(
              itemCount: listIcon.length,
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 70,
                childAspectRatio: 1,
                crossAxisSpacing: 50,
                mainAxisSpacing: 50,
              ),
              itemBuilder: (context, index) {
                return circleIcon(iconData: listIcon[index]);
              })),
    );
  }

  CircleAvatar circleIcon({required IconData iconData}) {
    return CircleAvatar(
      radius: 40,
      backgroundColor: const Color(0xff3f9beb),
      child: Icon(
        iconData,
        color: Colors.white,
        size: 35,
      ),
    );
  }
}
