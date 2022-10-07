import 'package:nomor1/models/contact_model.dart';

class ContactResources {
  static List<ContactModel> contactList = [];

  static void addContact(ContactModel contact) {
    contactList.insert(0, contact);
  }

  static void deleteContact(ContactModel contact) {
    contactList.remove(contact);
  }
}
