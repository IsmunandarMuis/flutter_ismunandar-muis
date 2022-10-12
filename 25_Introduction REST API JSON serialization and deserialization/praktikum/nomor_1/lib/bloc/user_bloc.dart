import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:praktikum_section_25/repositories/user_repository.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserRepository userRepository;
  UserBloc({required this.userRepository}) : super(UserInitial()) {
    on<GetDataUser>((event, emit) async {
      emit(UserLoadingState());

      try {
        final response = await userRepository.getAllUserWithoutModel();
        emit(UserGetState(response));
      } catch (e) {
        emit(UserErrorLoadedState(e.toString()));
      }
    });

    on<PostDataUser>((event, emit) async {
      emit(UserLoadingState());
      try {
        final response =
            await userRepository.postUserWithouModel(event.name, event.job);
        print(response);
        emit(UserPostState(response));
      } catch (e) {
        emit(UserErrorLoadedState(e.toString()));
      }
    });

    on<UpdateDataUser>((event, emit) async {
      emit(UserLoadingState());
      try {
        final response =
            await userRepository.postUserWithouModel(event.name, event.job);
        print(response);
        emit(UserUpdateState(response));
      } catch (e) {
        emit(UserErrorLoadedState(e.toString()));
      }
    });

    on<DeleteDataUser>((event, emit) async {
      emit(UserLoadingState());
      try {
        final responseCode = await userRepository.deleteUserWithouModel();
        Map<String, dynamic> dataResponse = {
          "status": responseCode,
          "message": "Berhasil menghapus data"
        };
        emit(UserDeleteState(dataResponse));
      } catch (e) {
        emit(UserErrorLoadedState(e.toString()));
      }
    });
  }
}
