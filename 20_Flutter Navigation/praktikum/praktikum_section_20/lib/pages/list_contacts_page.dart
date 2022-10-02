import 'package:flutter/material.dart';
import 'package:praktikum_section_20/models/contact_model.dart';
import 'package:praktikum_section_20/pages/create_contact_page.dart';
import 'package:praktikum_section_20/pages/widgets/contact_card.dart';

class ListContactsPage extends StatelessWidget {
  const ListContactsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "List Contacts",
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: ContactModel.dataUser
            .map(
              (contact) => ContactCard(
                  phoneNumber: contact['phone_number'],
                  userFirstName: contact['user_first_name'],
                  userLastName: contact['user_last_name']),
            )
            .toList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (_) => const CreateContactPage()));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
