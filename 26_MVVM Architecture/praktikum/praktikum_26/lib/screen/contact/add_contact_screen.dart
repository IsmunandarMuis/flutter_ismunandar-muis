import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:praktikum_26/model/contact.dart';

import 'contact_view_model/contact_bloc.dart';

class AddContactScren extends StatefulWidget {
  const AddContactScren({Key? key}) : super(key: key);

  @override
  State<AddContactScren> createState() => _AddContactScrenState();
}

late TextEditingController firstNameController;
late TextEditingController lastNameController;
late TextEditingController phoneNumberController;
late TextEditingController addressController;

class _AddContactScrenState extends State<AddContactScren> {
  @override
  void initState() {
    firstNameController = TextEditingController();
    lastNameController = TextEditingController();
    phoneNumberController = TextEditingController();
    addressController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    firstNameController.dispose();
    lastNameController.dispose();
    phoneNumberController.dispose();
    addressController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Create Contact"),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              TextFormField(
                controller: firstNameController,
                decoration: InputDecoration(
                    label: const Text("First Name"),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                controller: lastNameController,
                decoration: InputDecoration(
                    label: const Text("Last Name"),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                controller: phoneNumberController,
                keyboardType: TextInputType.number,
                maxLength: 13,
                decoration: InputDecoration(
                    counterText: "",
                    label: const Text("Phone Number"),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                controller: addressController,
                decoration: InputDecoration(
                    label: const Text("Address"),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
              const SizedBox(
                height: 50,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      minimumSize: const Size(double.infinity, 45)),
                  onPressed: () {
                    Contact contact = Contact(
                        firstName: firstNameController.text,
                        lastName: lastNameController.text,
                        phoneNumber: phoneNumberController.text,
                        address: addressController.text);
                    context.read<ContactBloc>().add(AddContact(contact));
                    context.read<ContactBloc>().add(GetContact());

                    Navigator.pop(context);
                  },
                  child: BlocBuilder<ContactBloc, ContactState>(
                    builder: (context, state) {
                      if (state is LoadingState) {
                        return const Center(
                          child: CircularProgressIndicator(
                            color: Colors.white,
                          ),
                        );
                      } else {
                        return const Text("Submit");
                      }
                    },
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
