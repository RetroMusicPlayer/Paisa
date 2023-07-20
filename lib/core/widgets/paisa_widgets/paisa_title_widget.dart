import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:paisa/features/home/presentation/bloc/home/home_bloc.dart';

class PaisaTitleWidget extends StatelessWidget {
  const PaisaTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      buildWhen: (previous, current) => current is CurrentIndexState,
      builder: (context, state) {
        if (state is CurrentIndexState) {
          return Text(
            BlocProvider.of<HomeBloc>(context)
                .getPageFromIndex(state.currentPage)
                .name(context),
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(fontWeight: FontWeight.bold),
          );
        }
        return const SizedBox.shrink();
      },
    );
  }
}
