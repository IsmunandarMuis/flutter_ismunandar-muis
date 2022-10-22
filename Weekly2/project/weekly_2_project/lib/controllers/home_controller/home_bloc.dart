import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<ShowInputEvent>((event, emit) {
      emit(ShowInputState(
          firstName: event.firstName,
          lastName: event.lastName,
          email: event.lastName,
          message: event.message));
    });
  }
}
