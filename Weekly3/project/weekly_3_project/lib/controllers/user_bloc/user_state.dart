// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'user_bloc.dart';

abstract class UserState extends Equatable {
  const UserState();

  @override
  List<Object> get props => [];
}

class UserInitial extends UserState {
  final List<UserModel>? userList;

  const UserInitial(this.userList);
}

class LoadingState extends UserState {}

class SuccessState extends UserState {}

class ErrorState extends UserState {
  final String errorMessage;
  const ErrorState({
    required this.errorMessage,
  });
}
