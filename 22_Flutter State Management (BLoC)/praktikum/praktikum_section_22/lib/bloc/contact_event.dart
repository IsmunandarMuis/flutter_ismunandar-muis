part of 'contact_bloc.dart';

@immutable
abstract class ContactEvent extends Equatable {
  const ContactEvent();
  @override
  List<Object?> get props => [];
}

class LoadContact extends ContactEvent {
  final List<ContactModel> contact;

  const LoadContact({this.contact = const <ContactModel>[]});
}

class AddContact extends ContactEvent {
  final ContactModel contact;

  const AddContact({required this.contact});

  @override
  List<Object?> get props => [contact];
}

class DeleteContact extends ContactEvent {
  final ContactModel contact;

  const DeleteContact(this.contact);

  @override
  List<Object?> get props => [contact];
}

class UpdateContact extends ContactEvent {
  final ContactModel contact;

  const UpdateContact(this.contact);

  @override
  List<Object?> get props => [contact];
}
