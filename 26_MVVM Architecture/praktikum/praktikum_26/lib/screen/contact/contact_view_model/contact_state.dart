// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'contact_bloc.dart';

abstract class ContactState extends Equatable {
  const ContactState();

  @override
  List<Object> get props => [];
}

class ContactInitial extends ContactState {}

class LoadingState extends ContactState {}

class LoadedContactState extends ContactState {
  List<Contact>? contacts;

  LoadedContactState({this.contacts});
}

class SuccessAddContact extends ContactState {}

class ErrorContactState extends ContactState {
  final String message;
  const ErrorContactState({
    required this.message,
  });
}
