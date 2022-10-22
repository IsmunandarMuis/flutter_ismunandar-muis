import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:weekly_1_project/models/user_model.dart';
import 'package:weekly_1_project/services/user_service.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final UserService _userService;
  UserBloc(this._userService) : super(const UserInitial([])) {
    on<GetUserEvent>((event, emit) async {
      emit(LoadingState());
      try {
        var dataUser = await _userService.getDataUser();
        emit(UserInitial(dataUser));
      } catch (e) {
        emit(LoadingState());
        emit(ErrorState(errorMessage: e.toString()));
      }
    });

    on<AddUserEvent>((event, emit) async {
      emit(LoadingState());

      try {
        await _userService.addDataUser(userModel: event.newDataUser);
        emit(SuccessState());
      } catch (e) {
        emit(ErrorState(errorMessage: e.toString()));
      }
    });
  }
}
