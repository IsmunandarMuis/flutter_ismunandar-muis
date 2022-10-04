import 'package:flutter/material.dart';
import 'package:parktikum_section_21/models/contact_model.dart';
import 'package:parktikum_section_21/pages/contacts_page.dart';
import 'package:parktikum_section_21/provider/contact_provider.dart';
import 'package:parktikum_section_21/provider/contact_provider.dart';
import 'package:provider/provider.dart';

class CreateContactPage extends StatefulWidget {
  const CreateContactPage({Key? key}) : super(key: key);

  @override
  State<CreateContactPage> createState() => _CreateContactPageState();
}

class _CreateContactPageState extends State<CreateContactPage> {
  late TextEditingController contactName;
  late TextEditingController phoneNumberController;
  var formKey = GlobalKey<FormState>();

  @override
  void initState() {
    contactName = TextEditingController();
    phoneNumberController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    contactName.dispose();
    phoneNumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final contactProvider = Provider.of<ContactProvider>(context);
    return Scaffold(
      backgroundColor: const Color(0xfff6f6f6),
      appBar: AppBar(
        title: const Text(
          "Create Contact",
        ),
        centerTitle: true,
      ),
      body: Form(
          key: formKey,
          child: Padding(
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
                      validator: (value) {
                        if (value!.isEmpty || value == '') {
                          return "name property cannot be empty";
                        }
                      },
                      controller: contactName,
                      decoration: const InputDecoration(
                        fillColor: Colors.white,
                        labelText: "Username",
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
                      validator: (value) {
                        if (value!.isEmpty || value == '') {
                          return "phone property cannot be empty";
                        }
                      },
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
                      if (!formKey.currentState!.validate()) return;

                      formKey.currentState!.save();

                      contactProvider.addContact(ContactModel(
                          contactName.text, phoneNumberController.text));
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const ContactsPage()),
                          (route) => false);
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
          )),
    );
  }
}
