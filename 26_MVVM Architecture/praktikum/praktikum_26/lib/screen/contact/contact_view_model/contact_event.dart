part of 'contact_bloc.dart';

abstract class ContactEvent extends Equatable {
  const ContactEvent();

  @override
  List<Object> get props => [];
}

class GetContact extends ContactEvent {}

class AddContact extends ContactEvent {
  final Contact contact;

  const AddContact(this.contact);
}

class DeleteContact extends ContactEvent {
  final String id;

  const DeleteContact(this.id);
}
