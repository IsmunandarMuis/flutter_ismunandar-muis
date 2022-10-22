// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'user_bloc.dart';

abstract class UserEvent extends Equatable {
  const UserEvent();

  @override
  List<Object> get props => [];
}

class GetUserEvent extends UserEvent {}

class AddUserEvent extends UserEvent {
  UserModel newDataUser;
  AddUserEvent({
    required this.newDataUser,
  });

  @override
  List<Object> get props => [newDataUser];
}
