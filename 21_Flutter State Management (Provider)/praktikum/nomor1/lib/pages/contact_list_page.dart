import 'package:flutter/material.dart';
import 'package:nomor1/pages/add_contact_page.dart';
import 'package:nomor1/resources/contact_resources.dart';
import 'package:nomor1/theme.dart';

import 'widgets/contact_card.dart';

class ContactListPage extends StatefulWidget {
  ContactListPage({Key? key}) : super(key: key);

  @override
  State<ContactListPage> createState() => _ContactListPageState();
  ContactResources _contactResources = ContactResources();
}

class _ContactListPageState extends State<ContactListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Themes.backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.5,
        leading: Icon(
          Icons.people_alt,
          size: 35,
          color: Themes.primaryTextColor,
        ),
        centerTitle: true,
        actions: [
          GestureDetector(
            onTap: () {
              print("add data");
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => AddContactPage()));
            },
            child: Container(
              margin: EdgeInsets.only(
                right: Themes.verticalMargin,
              ),
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Themes.primaryColor,
              ),
              child: Icon(Icons.add),
            ),
          )
        ],
        title: Text(
          "Contacts",
          style: Themes.primaryTextStyle.copyWith(
            fontWeight: Themes.bold,
          ),
        ),
      ),
      body: (ContactResources.contactList.length < 1)
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Contact Is Empty",
                    style: Themes.primaryTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: Themes.semiBold,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => AddContactPage()));
                    },
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Themes.primaryColor),
                          borderRadius: BorderRadius.circular(15)),
                      child: Text(
                        "Add New Contact +",
                        style: Themes.primaryTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight: Themes.bold,
                            color: Themes.primaryColor),
                      ),
                    ),
                  ),
                ],
              ),
            )
          : ListView(
              padding: EdgeInsets.symmetric(
                horizontal: Themes.horizontalMargin,
                vertical: Themes.verticalMargin,
              ),
              children: ContactResources.contactList.map((contact) {
                return ContactCard(
                    contactName: contact.contactName!,
                    contactNumber: contact.contactNumber!,
                    onDelete: () {
                      ContactResources.deleteContact(contact);
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (_) => ContactListPage()),
                          (route) => false);
                    });
              }).toList(),
            ),
    );
  }
}
