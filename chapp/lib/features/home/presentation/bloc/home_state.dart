part of 'home_bloc.dart';

sealed class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object?> get props => [];
}

final class HomeInitial extends HomeState {}

final class HomeLoadInProgress extends HomeState {}

final class HomeLoadSuccess extends HomeState {
  final String response;

  const HomeLoadSuccess({required this.response});

  @override
  List<Object> get props => [response];
}

final class HomeLoadFailure extends HomeState {
  final String? message;

  const HomeLoadFailure({this.message});

  @override
  List<Object?> get props => [message];
}