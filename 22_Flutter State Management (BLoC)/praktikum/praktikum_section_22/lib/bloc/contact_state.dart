part of 'contact_bloc.dart';

@immutable
abstract class ContactState extends Equatable {
  final List<ContactModel> listContact;
  const ContactState({this.listContact = const <ContactModel>[]});

  @override
  List<Object?> get props => [listContact];
}

class ContactInitial extends ContactState {}

class ContactLoading extends ContactState {}

class ContactLoaded extends ContactState {
  List<ContactModel> listContact;
  ContactLoaded({required this.listContact});

  @override
  List<Object?> get props => [listContact];
}

class SuccessAdded extends ContactState {}
