import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:praktikum_section_28/model/api/food_api.dart';

import '../../../model/food_model.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final FoodApi _foodAPi;
  HomeBloc(this._foodAPi) : super(HomeInitial()) {
    on<LoadDataEvent>((event, emit) async {
      emit(LoadingDataState());

      final result = await _foodAPi.getAllFood();
      emit(LoadDataState(foodList: result));
      try {} catch (e) {
        emit(ErrorLoadDataState(errorMessage: e.toString()));
      }
    });
  }
}
