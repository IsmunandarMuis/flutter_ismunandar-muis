part of 'auth_bloc.dart';

@immutable
abstract class AuthState {}

class AuthInitial extends AuthState {}

class AuthLoading extends AuthState {}

class AuthRegister extends AuthState {
  final bool isLogin;

  AuthRegister({required this.isLogin});
}

class AuthLogout extends AuthState {}
