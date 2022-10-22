part of 'home_bloc.dart';

@immutable
abstract class HomeEvent {}

class ShowInputEvent extends HomeEvent {
  final String firstName;
  final String lastName;
  final String email;
  final String message;

  ShowInputEvent(
      {this.firstName = "FirstName",
      this.lastName = "LastName",
      this.email = "Email",
      this.message = "Message"});
}
