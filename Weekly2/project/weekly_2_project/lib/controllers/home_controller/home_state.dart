part of 'home_bloc.dart';

@immutable
abstract class HomeState {}

class HomeInitial extends HomeState {}

class ShowInputState extends HomeState {
  final String firstName;
  final String lastName;
  final String email;
  final String message;

  ShowInputState(
      {required this.firstName,
      required this.lastName,
      required this.email,
      required this.message});
}
