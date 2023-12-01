import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:paisa/core/common.dart';
import 'package:paisa/core/common_enum.dart';
import 'package:paisa/features/home/presentation/bloc/home/home_bloc.dart';

class PaisaIconTitle extends StatelessWidget {
  const PaisaIconTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          Icons.wallet,
          color: context.primary,
          size: 32,
        ),
        const SizedBox(width: 16),
        Text(
          context.loc.appTitle,
          style: context.titleLarge?.copyWith(
            color: context.onBackground,
            fontWeight: FontWeight.w600,
          ),
        )
      ],
    );
  }
}

class PaisaTitle extends StatelessWidget {
  const PaisaTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      buildWhen: (previous, current) => current is CurrentIndexState,
      builder: (context, state) {
        String title = PageType.home.name(context);
        if (state is CurrentIndexState) {
          title = BlocProvider.of<HomeBloc>(context)
              .getPageFromIndex(state.currentPage)
              .name(context);
        }
        return Text(
          title,
          style: context.titleLarge?.copyWith(
            fontWeight: FontWeight.w600,
            color: context.onBackground,
          ),
        );
      },
    );
  }
}

class PaisaIcon extends StatelessWidget {
  const PaisaIcon({
    super.key,
    this.size = 32,
  });

  final double size;

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.wallet,
      color: context.primary,
      size: size,
    );
  }
}
