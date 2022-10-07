import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:praktikum_section_23/bloc/contacts_bloc.dart';
import 'package:praktikum_section_23/models/contact.dart';

class CreateContactPage extends StatelessWidget {
  CreateContactPage({Key? key}) : super(key: key);
  final TextEditingController contactNameController = TextEditingController();
  final TextEditingController contactNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: contactNameController,
                  decoration: const InputDecoration(
                    label: Text("Contact Name"),
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: contactNumberController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    label: Text("Contact Number"),
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                ElevatedButton(
                    onPressed: () {
                      Contact contact = Contact(
                        contactName: contactNameController.text,
                        contactNumber: contactNumberController.text,
                      );
                      context
                          .read<ContactsBloc>()
                          .add(AddContactEvent(contact: contact));

                      Navigator.pop(context);
                    },
                    child: const Text("Add Contact"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
