import 'package:bloc/bloc.dart';
import 'package:bloc_state_management/models/user.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(UserInitial()) {
    on<UserEvent>((event, emit) async {
      emit(UserLoading());

      Future.delayed(const Duration(seconds: 2));
      final prefs = await SharedPreferences.getInstance();
      final String name = prefs.getString("name")!;
      final String phoneNumber = prefs.getString("phoneNumber")!;
      final String email = prefs.getString("email")!;
      final String password = prefs.getString("password")!;

      if (name.isNotEmpty &&
          phoneNumber.isNotEmpty &&
          email.isNotEmpty &&
          password.isNotEmpty) {
        print("masuk");
        final User user = User(
            name: name,
            phoneNumber: phoneNumber,
            email: email,
            password: password);

        emit(UserLoaded(user: user));
      } else {
        emit(ErrorGetData());
      }
    });
  }
}
