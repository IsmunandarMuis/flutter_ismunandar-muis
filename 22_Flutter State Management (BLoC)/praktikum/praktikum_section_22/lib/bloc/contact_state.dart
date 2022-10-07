part of 'contact_bloc.dart';

@immutable
abstract class ContactState extends Equatable {
  const ContactState();

  @override
  List<Object?> get props => [];
}

class ContactLoading extends ContactState {}

class ContactLoaded extends ContactState {
  final List<ContactModel> listContact;
  const ContactLoaded({this.listContact = const <ContactModel>[]});

  @override
  List<Object?> get props => [listContact];
}
