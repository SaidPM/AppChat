part of 'home_bloc.dart';

sealed class HomeEvent extends Equatable {
  const HomeEvent();

  @override
  List<Object> get props => [];
}

final class HomeSearchPressed extends HomeEvent {
  final String query;

  const HomeSearchPressed({required this.query});

  @override
  List<Object> get props => [query];
}