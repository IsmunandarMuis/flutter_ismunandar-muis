part of 'user_bloc.dart';

abstract class UserEvent extends Equatable {
  const UserEvent();

  @override
  List<Object> get props => [];
}

class GetDataUser extends UserEvent {}

class PostDataUser extends UserEvent {
  final String name;
  final String job;

  const PostDataUser(this.name, this.job);

  @override
  List<Object> get props => [name, job];
}

class UpdateDataUser extends UserEvent {
  final String name;
  final String job;

  const UpdateDataUser(this.name, this.job);

  @override
  List<Object> get props => [name, job];
}

class DeleteDataUser extends UserEvent {}
