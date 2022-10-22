import 'package:flutter/material.dart';
import 'package:weekly_1_project/screens/theme.dart';

class DrawerHomeScreen extends StatelessWidget {
  const DrawerHomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: backgroundColor,
      child: ListView(
        padding: const EdgeInsets.all(18),
        children: [
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.maxFinite, 45),
                  primary: primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  )),
              onPressed: () {},
              child: Text(
                "About Us",
                style: primaryTextStyle.copyWith(
                    fontSize: 18, fontWeight: semiBold, color: backgroundColor),
              )),
          const SizedBox(
            height: defaultMargin,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.maxFinite, 45),
                  primary: primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  )),
              onPressed: () {},
              child: Text(
                "Contact Us",
                style: primaryTextStyle.copyWith(
                    fontSize: 18, fontWeight: semiBold, color: backgroundColor),
              )),
          const SizedBox(
            height: defaultMargin,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.maxFinite, 45),
                  primary: primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  )),
              onPressed: () {},
              child: Text(
                "Login",
                style: primaryTextStyle.copyWith(
                    fontSize: 18, fontWeight: semiBold, color: backgroundColor),
              )),
        ],
      ),
    );
  }
}
