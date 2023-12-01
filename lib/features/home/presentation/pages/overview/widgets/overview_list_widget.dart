import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:paisa/core/common.dart';
import 'package:paisa/features/home/presentation/cubit/overview/overview_cubit.dart';
import 'package:paisa/features/home/presentation/pages/overview/widgets/category_list_widget.dart';

import 'package:paisa/core/widgets/paisa_widget.dart';

class OverviewListView extends StatelessWidget {
  const OverviewListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OverviewCubit, BudgetState>(
      buildWhen: (previous, current) =>
          current is FilteredCategoryListState ||
          current is EmptyFilterListState,
      builder: (context, state) {
        if (state is FilteredCategoryListState) {
          if (state.categoryGrouped.isEmpty) {
            return EmptyWidget(
              icon: Icons.paid,
              title: context.loc.emptyOverviewMessageTitle,
              description: context.loc.emptyOverviewMessageSubtitle,
            );
          } else {
            return CategoryListWidget(
              categoryGrouped: state.categoryGrouped,
              totalExpense: state.totalExpense,
            );
          }
        } else {
          return EmptyWidget(
            icon: Icons.paid,
            title: context.loc.emptyOverviewMessageTitle,
            description: context.loc.emptyOverviewMessageSubtitle,
          );
        }
      },
    );
  }
}
