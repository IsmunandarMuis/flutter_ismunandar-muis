// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'home_bloc.dart';

abstract class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object> get props => [];
}

class HomeInitial extends HomeState {}

class LoadDataState extends HomeState {
  final List<FoodModel>? foodList;

  const LoadDataState({this.foodList});
}

class LoadingDataState extends HomeState {}

class ErrorLoadDataState extends HomeState {
  final String errorMessage;
  const ErrorLoadDataState({
    required this.errorMessage,
  });

  @override
  // TODO: implement props
  List<Object> get props => [errorMessage];
}
