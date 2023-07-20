import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'test_event.dart';
part 'test_state.dart';

class TestBloc extends Bloc<TestEvent, TestState> {
  TestBloc() : super(TestInitial()) {
    on<TestEvent>((event, emit) {
      // TODO: implement event handler
    });
    on<AddTestEvent>(addTestState);
  }
}

FutureOr<void> addTestState(AddTestEvent event, Emitter<TestState> emit) {
  emit(const AddTestState('11'));
}
