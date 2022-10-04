import 'package:flutter/material.dart';
import 'package:nomor1/models/contact_model.dart';
import 'package:nomor1/pages/contact_list_page.dart';
import 'package:nomor1/resources/contact_resources.dart';
import 'package:nomor1/theme.dart';

class AddContactPage extends StatefulWidget {
  AddContactPage({Key? key}) : super(key: key);

  @override
  State<AddContactPage> createState() => _AddContactPageState();
}

class _AddContactPageState extends State<AddContactPage> {
  late TextEditingController contactNameController;
  late TextEditingController contactNumberController;

  final ContactResources _contactResources = ContactResources();

  @override
  void initState() {
    contactNameController = TextEditingController();
    contactNumberController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    contactNameController.clear();
    contactNameController.dispose();

    contactNumberController.clear();
    contactNumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.5,
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Themes.primaryTextColor,
            )),
        title: Text(
          "Create Contact",
          style: Themes.primaryTextStyle.copyWith(
            fontWeight: Themes.bold,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: Themes.horizontalMargin,
          vertical: Themes.verticalMargin,
        ),
        child: Column(
          children: [
            Material(
              shadowColor: Themes.primaryColor.withOpacity(0.5),
              elevation: 5,
              borderRadius: const BorderRadius.all(Radius.circular(18)),
              child: TextFormField(
                onChanged: (value) {
                  setState(() {});
                },
                controller: contactNameController,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  hintText: "Steve Jobs",
                  labelText: "Contact Name",
                  focusColor: Themes.secondaryTextColor,
                  hintStyle: Themes.secondaryTextStyle.copyWith(fontSize: 10),
                  suffixIcon: const Icon(Icons.person),
                  counterText: "",
                  suffixIconColor: Themes.secondaryTextColor,
                  border: const UnderlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(18)),
                      borderSide: BorderSide(
                          color: Colors.white, style: BorderStyle.none)),
                  filled: true,
                  contentPadding: const EdgeInsets.all(13),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Material(
              shadowColor: Themes.primaryColor.withOpacity(0.5),
              elevation: 5,
              borderRadius: const BorderRadius.all(Radius.circular(18)),
              child: TextFormField(
                onChanged: (value) {
                  setState(() {});
                },
                controller: contactNumberController,
                keyboardType: TextInputType.number,
                maxLength: 13,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  hintText: "082193xxxx",
                  labelText: "Contact Number",
                  focusColor: Themes.secondaryTextColor,
                  hintStyle: Themes.secondaryTextStyle.copyWith(fontSize: 10),
                  suffixIcon: const Icon(Icons.phone),
                  counterText: "",
                  suffixIconColor: Themes.secondaryTextColor,
                  border: const UnderlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(18)),
                      borderSide: BorderSide(
                          color: Colors.white, style: BorderStyle.none)),
                  filled: true,
                  contentPadding: const EdgeInsets.all(13),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            (contactNameController.text.isEmpty ||
                    contactNumberController.text.isEmpty)
                ? ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        primary: Themes.secondaryTextColor,
                        padding: const EdgeInsets.all(10),
                        minimumSize: const Size(double.infinity, 40),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        )),
                    child: Text(
                      "Add Contact",
                      style: Themes.primaryTextStyle.copyWith(
                          fontWeight: Themes.semiBold,
                          color: Themes.backgroundColor,
                          fontSize: 16),
                    ),
                  )
                : ElevatedButton(
                    onPressed: () {
                      ContactModel newContact = ContactModel(
                          contactNameController.text,
                          contactNumberController.text);
                      ContactResources.addContact(newContact);
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (_) => ContactListPage()),
                          (route) => false);
                    },
                    style: ElevatedButton.styleFrom(
                        primary: Themes.primaryColor,
                        padding: const EdgeInsets.all(10),
                        minimumSize: const Size(double.infinity, 40),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        )),
                    child: Text(
                      "Add Contact",
                      style: Themes.primaryTextStyle.copyWith(
                          fontWeight: Themes.semiBold,
                          color: Themes.backgroundColor,
                          fontSize: 16),
                    ),
                  )
          ],
        ),
      ),
    );
  }
}
