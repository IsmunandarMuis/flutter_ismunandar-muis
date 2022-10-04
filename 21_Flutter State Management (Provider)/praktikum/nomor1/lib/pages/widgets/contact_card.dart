import 'package:flutter/material.dart';
import 'package:nomor1/theme.dart';

class ContactCard extends StatelessWidget {
  ContactCard({
    Key? key,
    required this.contactName,
    required this.contactNumber,
    required this.onDelete,
  }) : super(key: key);
  void Function()? onDelete;
  final String contactName;
  final String contactNumber;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(13),
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
          border: Border.all(
            width: 1,
            color: Themes.primaryColor,
          )),
      child: Row(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: Themes.primaryColor,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Text(
                (contactName[0] + contactName[1]).toUpperCase(),
                style: Themes.secondaryTextStyle.copyWith(
                    fontSize: 30,
                    fontWeight: Themes.medium,
                    color: Colors.white),
              ),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  contactName,
                  style: Themes.primaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: Themes.semiBold,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  contactNumber,
                  style: Themes.secondaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: Themes.semiBold,
                  ),
                ),
              ],
            ),
          ),
          IconButton(
              onPressed: onDelete,
              icon: Icon(
                Icons.delete_forever_rounded,
                color: Themes.errorColor,
                size: 30,
              ))
        ],
      ),
    );
  }
}
