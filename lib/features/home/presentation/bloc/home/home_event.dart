part of 'home_bloc.dart';

@immutable
abstract class HomeEvent extends Equatable {
  const HomeEvent();

  @override
  List<Object?> get props => [];
}

class CurrentIndexEvent extends HomeEvent {
  const CurrentIndexEvent(this.currentPage);

  final int currentPage;

  @override
  List<Object?> get props => [currentPage];
}
