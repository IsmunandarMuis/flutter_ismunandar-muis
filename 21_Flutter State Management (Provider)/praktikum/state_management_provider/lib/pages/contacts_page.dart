import 'package:flutter/material.dart';
import 'package:parktikum_section_21/models/contact_model.dart';
import 'package:parktikum_section_21/provider/contact_provider.dart';
import 'package:provider/provider.dart';

import 'create_contact_page.dart';
import 'widgets/contact_card.dart';

class ContactsPage extends StatelessWidget {
  const ContactsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final contactProvider = Provider.of<ContactProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "List Contacts",
        ),
        centerTitle: true,
      ),
      body: (contactProvider.contact.isEmpty)
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.people,
                    size: 50,
                    color: Colors.black45,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Your contact is empty",
                    style: TextStyle(
                      color: Colors.black45,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            )
          : ListView(
              padding: const EdgeInsets.all(20),
              children: contactProvider.contact
                  .map(
                    (contact) => Stack(
                      children: [
                        ContactCard(
                          phoneNumber: contact.contactPhoneNumber,
                          contactName: contact.contactName,
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 16, right: 16),
                            child: IconButton(
                                onPressed: () {
                                  contactProvider.deleteContact(contact);
                                },
                                icon: Icon(
                                  Icons.delete,
                                  size: 35,
                                  color: Colors.red.shade300,
                                )),
                          ),
                        )
                      ],
                    ),
                  )
                  .toList()),
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
