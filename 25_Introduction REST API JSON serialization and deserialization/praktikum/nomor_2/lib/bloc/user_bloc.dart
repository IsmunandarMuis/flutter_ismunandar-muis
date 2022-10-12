import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:nomor_2/models/user.dart';
import 'package:nomor_2/repositories/user_repository.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserRepository userRepository;
  UserBloc({required this.userRepository}) : super(UserInitial()) {
    on<GetDataUser>(_onGetDataUser);
    on<PostDataUser>(_onPostDataUser);
    on<UpdateDataUser>(_onUpdateDataUser);
    on<DeleteDataUser>(_onDeleteDataUser);
  }

  Future<void> _onPostDataUser(
      PostDataUser event, Emitter<UserState> emit) async {
    emit(UserLoadingState());
    try {
      final response =
          await userRepository.postUserWithModel(event.name, event.job);
      emit(UserPostState(response));
    } catch (e) {
      emit(UserErrorLoadedState(e.toString()));
    }
  }

  Future<void> _onUpdateDataUser(
      UpdateDataUser event, Emitter<UserState> emit) async {
    emit(UserLoadingState());
    try {
      final response =
          await userRepository.updateUserWithModel(event.name, event.job);
      emit(UserUpdateState(response));
    } catch (e) {
      emit(UserErrorLoadedState(e.toString()));
    }
  }

  Future<void> _onDeleteDataUser(
      DeleteDataUser event, Emitter<UserState> emit) async {
    emit(UserLoadingState());
    try {
      final responseCode = await userRepository.deleteUserWithModel();
      Map<String, dynamic> dataResponse = {
        "status": responseCode,
        "message": "Berhasil menghapus data"
      };
      emit(UserDeleteState(dataResponse));
    } catch (e) {
      emit(UserErrorLoadedState(e.toString()));
    }
  }

  Future<void> _onGetDataUser(
      GetDataUser event, Emitter<UserState> emit) async {
    emit(UserLoadingState());

    try {
      final response = await userRepository.getAllUserWithModel();
      emit(UserGetState(response));
    } catch (e) {
      emit(UserErrorLoadedState(e.toString()));
    }
  }
}
