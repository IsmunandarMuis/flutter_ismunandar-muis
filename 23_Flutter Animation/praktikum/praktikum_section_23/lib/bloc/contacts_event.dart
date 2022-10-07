part of 'contacts_bloc.dart';

abstract class ContactsEvent extends Equatable {
  const ContactsEvent();

  @override
  List<Object> get props => [];
}

class AddContactEvent extends ContactsEvent {
  final Contact contact;

  const AddContactEvent({required this.contact});

  @override
  List<Object> get props => [contact];
}

class DeletedContactEvent extends ContactsEvent {
  final Contact contact;

  const DeletedContactEvent({required this.contact});
}
