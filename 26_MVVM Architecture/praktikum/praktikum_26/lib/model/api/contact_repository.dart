import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:praktikum_26/model/contact.dart';

class ContactRepository {
  final _firestore = FirebaseFirestore.instance;

  Future<void> addContact(Contact contact) async {
    var collection = _firestore.collection("users");
    try {
      await collection.add(contact.toJson());
    } catch (e) {
      rethrow;
    }
  }

  Future<List<Contact>> getContact() async {
    try {
      var collection = await _firestore.collection("users").get();
      List<Contact> contacts =
          collection.docs.map((doc) => Contact.fromJson(doc.data())).toList();

      return contacts;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> deleteContact({required String phoneNumber}) async {
    try {
      final contact = await _firestore
          .collection("users")
          .where('phone_number', isEqualTo: phoneNumber)
          .get();
      await _firestore.collection("users").doc(contact.docs.single.id).delete();
    } catch (e) {
      print(e.toString());
      rethrow;
    }
  }
}
