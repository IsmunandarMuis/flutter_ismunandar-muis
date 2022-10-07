part of 'contacts_bloc.dart';

class ContactsState extends Equatable {
  final List<Contact> contactList;
  const ContactsState({this.contactList = const []});

  @override
  List<Object> get props => [contactList];
}
