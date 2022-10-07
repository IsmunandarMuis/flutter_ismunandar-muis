import 'package:flutter/material.dart';
import 'package:parktikum_section_21/models/contact_model.dart';

class ContactProvider with ChangeNotifier {
  final List<ContactModel> _contacts = [
    ContactModel("jjlj", "contactPhoneNumber")
  ];

  List<ContactModel> get contact => _contacts;

  void addContact(ContactModel contact) {
    _contacts.insert(0, contact);
    notifyListeners();
  }

  void deleteContact(ContactModel contact) {
    _contacts.remove(contact);
    notifyListeners();
  }
}
