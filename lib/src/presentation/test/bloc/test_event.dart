part of 'test_bloc.dart';

abstract class TestEvent extends Equatable {
  const TestEvent();

  @override
  List<Object> get props => [];
}

class AddTestEvent extends TestEvent {
  const AddTestEvent(this.count);

  final int count;

  @override
  List<Object> get props => [count];
}
