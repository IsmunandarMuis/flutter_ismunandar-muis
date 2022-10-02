import 'package:flutter/material.dart';
import 'package:praktikum_section_20/models/contact_model.dart';
import 'package:praktikum_section_20/pages/list_contacts_page.dart';

class CreateContactPage extends StatefulWidget {
  const CreateContactPage({Key? key}) : super(key: key);

  @override
  State<CreateContactPage> createState() => _CreateContactPageState();
}

class _CreateContactPageState extends State<CreateContactPage> {
  late TextEditingController firstNameController;
  late TextEditingController lastNameController;
  late TextEditingController phoneNumberController;

  @override
  void initState() {
    firstNameController = TextEditingController();
    lastNameController = TextEditingController();
    phoneNumberController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    firstNameController.dispose();
    lastNameController.dispose();
    phoneNumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff6f6f6),
      appBar: AppBar(
        title: const Text(
          "Create Contact",
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Material(
                shadowColor: Colors.black54,
                elevation: 5,
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                child: TextFormField(
                  controller: firstNameController,
                  decoration: const InputDecoration(
                    fillColor: Colors.white,
                    labelText: "First Name",
                    suffixIcon: Icon(Icons.person),
                    suffixIconColor: Colors.black54,
                    border: UnderlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide(
                            color: Colors.white, style: BorderStyle.none)),
                    filled: true,
                    contentPadding: EdgeInsets.all(15),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Material(
                shadowColor: Colors.black54,
                elevation: 5,
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                child: TextFormField(
                  controller: lastNameController,
                  decoration: const InputDecoration(
                    fillColor: Colors.white,
                    labelText: "Last Name",
                    suffixIcon: Icon(Icons.person),
                    suffixIconColor: Colors.black54,
                    border: UnderlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide(
                            color: Colors.white, style: BorderStyle.none)),
                    filled: true,
                    contentPadding: EdgeInsets.all(15),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Material(
                shadowColor: Colors.black54,
                elevation: 5,
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  maxLength: 13,
                  controller: phoneNumberController,
                  decoration: const InputDecoration(
                    fillColor: Colors.white,
                    labelText: "Phone Number",
                    hintText: "(+62)",
                    counterText: "",
                    suffixIcon: Icon(Icons.phone),
                    suffixIconColor: Colors.black54,
                    border: UnderlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide(
                            color: Colors.white, style: BorderStyle.none)),
                    filled: true,
                    contentPadding: EdgeInsets.all(15),
                  ),
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    Map<String, dynamic> newContact = {
                      "phone_number": phoneNumberController.text,
                      "user_first_name": firstNameController.text,
                      "user_last_name": lastNameController.text,
                    };
                    ContactModel.addContact(newContact);
                  });
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (_) => const ListContactsPage()),
                      (route) => false);
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (_) => ListContactsPage()));
                },
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 30),
                    primary: Colors.green[400],
                    padding: const EdgeInsets.all(15),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    )),
                child: const Text("Add Contact",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
