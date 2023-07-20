part of 'test_bloc.dart';

abstract class TestState {
  const TestState();

  @override
  List<Object> get props => [];
}

class TestInitial extends TestState {}

class AddTestState extends TestState {
  const AddTestState(this.count);

  final String count;

  @override
  List<Object> get props => [count];
}
