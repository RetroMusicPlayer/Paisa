part of 'home_bloc.dart';

@immutable
abstract class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object?> get props => [];
}

class ExpenseInitial extends HomeState {}

class CurrentIndexState extends HomeState {
  const CurrentIndexState(this.currentPage);

  final int currentPage;

  @override
  List<Object?> get props => [currentPage];
}
