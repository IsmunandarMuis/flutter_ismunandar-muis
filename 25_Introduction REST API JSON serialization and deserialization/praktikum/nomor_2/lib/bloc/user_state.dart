part of 'user_bloc.dart';

abstract class UserState extends Equatable {
  const UserState();

  @override
  List<Object> get props => [];
}

class UserInitial extends UserState {}

class UserLoadingState extends UserState {}

class UserGetState extends UserState {
  final List<User> dataResponse;

  const UserGetState(this.dataResponse);

  @override
  List<Object> get props => [dataResponse];
}

class UserPostState extends UserState {
  final Map dataResponse;

  const UserPostState(this.dataResponse);

  @override
  List<Object> get props => [dataResponse];
}

class UserUpdateState extends UserState {
  final Map dataResponse;

  const UserUpdateState(this.dataResponse);

  @override
  List<Object> get props => [dataResponse];
}

class UserDeleteState extends UserState {
  final Map<String, dynamic> dataResponse;

  const UserDeleteState(this.dataResponse);

  @override
  List<Object> get props => [dataResponse];
}

class UserErrorLoadedState extends UserState {
  final String message;

  const UserErrorLoadedState(this.message);
}
