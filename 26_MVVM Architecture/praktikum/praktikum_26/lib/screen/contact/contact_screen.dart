import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:praktikum_26/screen/contact/add_contact_screen.dart';

import '../../model/contact.dart';
import 'contact_view_model/contact_bloc.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("List Contact"),
          centerTitle: true,
        ),
        body: BlocBuilder<ContactBloc, ContactState>(
          builder: (context, state) {
            print(state);
            if (state is LoadedContactState) {
              List<Contact>? allContact = state.contacts;
              if (allContact!.isEmpty) {
                return const Center(
                  child: Text(
                    "Contact is Empty",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                );
              } else {
                return ListView.builder(
                    padding: const EdgeInsets.all(20),
                    itemCount: allContact.length,
                    itemBuilder: (context, index) {
                      return Card(
                        margin: const EdgeInsets.only(bottom: 15),
                        child: ListTile(
                            title: Text(
                              allContact[index].firstName +
                                  " " +
                                  allContact[index].lastName,
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            ),
                            subtitle: Text(allContact[index].phoneNumber),
                            trailing: PopupMenuButton(
                              itemBuilder: (context) {
                                return [
                                  const PopupMenuItem(
                                      value: 1, child: Text("Delete data")),
                                ];
                              },
                              onSelected: (item) {
                                if (item == 1) {
                                  showDialog(
                                      context: context,
                                      builder: (_) {
                                        return AlertDialog(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(18)),
                                          title: const Center(
                                              child: Text("Hapus contact?")),
                                          contentPadding:
                                              const EdgeInsets.all(18),
                                          content: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              ElevatedButton(
                                                  style: ElevatedButton.styleFrom(
                                                      side: BorderSide(
                                                          color: Colors
                                                              .red.shade900),
                                                      primary: Colors.white,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10))),
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                  },
                                                  child: Text(
                                                    "Batal",
                                                    style: TextStyle(
                                                        color: Colors
                                                            .red.shade900),
                                                  )),
                                              ElevatedButton(
                                                  style: ElevatedButton.styleFrom(
                                                      primary:
                                                          Colors.red.shade900,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10))),
                                                  onPressed: () {
                                                    context
                                                        .read<ContactBloc>()
                                                        .add(DeleteContact(
                                                            allContact[index]
                                                                .phoneNumber));

                                                    context
                                                        .read<ContactBloc>()
                                                        .add(GetContact());
                                                    Navigator.pop(context);
                                                  },
                                                  child: const Text("Hapus"))
                                            ],
                                          ),
                                        );
                                      });
                                }
                              },
                            )),
                      );
                    });
              }
            } else {
              return const Center(
                child: CircularProgressIndicator(
                  color: Colors.amber,
                ),
              );
            }
            // return const Center();
          },
        ),
        floatingActionButton: FloatingActionButton(
          elevation: 0,
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (_) => const AddContactScren()));
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
