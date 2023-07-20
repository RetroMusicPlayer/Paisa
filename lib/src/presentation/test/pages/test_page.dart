import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:paisa/src/presentation/test/bloc/test_bloc.dart';

class TestPage extends StatelessWidget {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Test Page'),
        ),
        body: BlocProvider(
          create: (context) => TestBloc(),
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  final random = Random();
                  final number = random.nextInt(100) + 1;
                  context.read<TestBloc>().add(AddTestEvent(1));
                },
                child: const Text('data'),
              ),
              BlocConsumer<TestBloc, TestState>(
                listener: (context, state) {
                  print(state);
                },
                builder: (context, state) {
                  return const Center(
                    child: Text('Test Page'),
                  );
                },
              )
            ],
          ),
        ));
  }
}
