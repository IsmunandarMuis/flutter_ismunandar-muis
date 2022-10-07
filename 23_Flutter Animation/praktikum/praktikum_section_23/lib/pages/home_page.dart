import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:praktikum_section_23/bloc/contacts_bloc.dart';
import 'package:praktikum_section_23/models/contact.dart';
import 'package:praktikum_section_23/pages/create_contact_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contacts"),
      ),
      body: BlocBuilder<ContactsBloc, ContactsState>(
        builder: (context, state) {
          final allContact = state.contactList;
          if (allContact.isEmpty) {
            return const Center(
              child: Text(
                "No Contact",
                style: TextStyle(fontSize: 25, color: Colors.black54),
              ),
            );
          }
          return ListView.builder(
              padding: const EdgeInsets.all(20),
              itemCount: allContact.length,
              itemBuilder: (contact, index) {
                return ContactCard(contact: allContact[index]);
              });
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            PageRouteBuilder(
                pageBuilder: ((context, animation, secondaryAnimation) {
              return CreateContactPage();
            }), transitionsBuilder:
                    (context, animation, secondaryAnimation, child) {
              final tween = Tween(
                begin: const Offset(0, .5),
                end: Offset.zero,
              );
              return SlideTransition(
                position: animation.drive(tween),
                child: child,
              );
            }),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

// ignore: must_be_immutable
class ContactCard extends StatelessWidget {
  ContactCard({
    Key? key,
    required this.contact,
  }) : super(key: key);

  Contact? contact;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black54),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Icon(
            Icons.person_pin,
            size: 50,
          ),
          const SizedBox(
            width: 8,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(contact!.contactName ?? "No Name"),
                const SizedBox(
                  height: 5,
                ),
                Text(contact!.contactNumber ?? "No Number"),
              ],
            ),
          ),
          Center(
            child: IconButton(
                onPressed: () {
                  context
                      .read<ContactsBloc>()
                      .add(DeletedContactEvent(contact: contact!));
                },
                icon: Icon(
                  Icons.delete,
                  size: 30,
                  color: Colors.red.shade900,
                )),
          )
        ],
      ),
    );
  }
}
