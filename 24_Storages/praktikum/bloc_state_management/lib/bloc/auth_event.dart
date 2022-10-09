part of 'auth_bloc.dart';

@immutable
abstract class AuthEvent {}

class RegisterEvent extends AuthEvent {
  final User user;

  RegisterEvent(this.user);
}

class LogoutEvent extends AuthEvent {}
