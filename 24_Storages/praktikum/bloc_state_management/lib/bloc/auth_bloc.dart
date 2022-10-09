import 'package:bloc/bloc.dart';
import 'package:bloc_state_management/models/user.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<RegisterEvent>(
      (event, emit) async {
        final prefs = await SharedPreferences.getInstance();

        if (event.user.name.isNotEmpty &&
            event.user.phoneNumber.isNotEmpty &&
            event.user.email.isNotEmpty &&
            event.user.password.isNotEmpty) {
          await prefs.setString("name", event.user.name);
          await prefs.setString("phoneNumber", event.user.phoneNumber);
          await prefs.setString("email", event.user.email);
          await prefs.setString("password", event.user.password);
          emit(AuthRegister(isLogin: true));
        } else {
          emit(AuthRegister(isLogin: false));
        }
      },
    );
    on<LogoutEvent>((event, emit) async {
      final prefs = await SharedPreferences.getInstance();
      prefs.clear();
      emit(AuthLogout());
    });
  }
}
