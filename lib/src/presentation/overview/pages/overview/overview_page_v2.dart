import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../main.dart';
import '../../../../core/common.dart';
import '../../../../core/enum/filter_budget.dart';
import '../../../../domain/category/entities/category.dart';
import '../../../../domain/expense/entities/expense.dart';
import '../../../summary/controller/summary_controller.dart';
import '../../../widgets/filter_widget/paisa_filter_transaction_widget.dart';
import '../../../widgets/paisa_chip.dart';
import '../../cubit/budget_cubit.dart';

class OverviewPageV2 extends StatefulWidget {
  const OverviewPageV2({
    super.key,
    required this.expenses,
  });

  final List<Expense> expenses;

  @override
  State<OverviewPageV2> createState() => _OverviewPageV2State();
}

class _OverviewPageV2State extends State<OverviewPageV2> {
  final SummaryController summaryController = getIt.get<SummaryController>();
  final BudgetCubit budgetCubit = getIt.get<BudgetCubit>();

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<FilterExpense>(
      valueListenable: valueNotifier,
      builder: (context, value, child) {
        budgetCubit.fetchBudgetSummary(widget.expenses, value);
        return Scaffold(
          body: ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.only(bottom: 124),
            children: [
              BlocBuilder(
                bloc: budgetCubit,
                buildWhen: (previous, current) =>
                    current is InitialSelectedState,
                builder: (context, state) {
                  if (state is InitialSelectedState) {
                    return SizedBox(
                      height: 80,
                      child: ListView.builder(
                        shrinkWrap: true,
                        padding: const EdgeInsets.all(16),
                        scrollDirection: Axis.horizontal,
                        itemCount: state.filerTimes.length,
                        itemBuilder: (context, index) {
                          final item = state.filerTimes[index];
                          return PaisaMaterialYouChip(
                            title: item,
                            onPressed: () {
                              if (budgetCubit.selectedTime != item) {
                                budgetCubit.updateFilterTime(item);
                              }
                            },
                            isSelected: item == budgetCubit.selectedTime,
                          );
                        },
                      ),
                    );
                  } else {
                    return const SizedBox.shrink();
                  }
                },
              ),
              BlocBuilder(
                bloc: budgetCubit,
                buildWhen: (previous, current) =>
                    current is FilteredCategoryListState,
                builder: (context, state) {
                  if (state is FilteredCategoryListState) {
                    return CategoryListWidget(
                      categoryGrouped: state.categoryGrouped,
                      summaryController: summaryController,
                      totalExpense: state.totalExpense,
                    );
                  } else {
                    return const SizedBox.shrink();
                  }
                },
              ),
            ],
          ),
        );
      },
    );
  }
}

class CategoryListWidget extends StatelessWidget {
  const CategoryListWidget({
    super.key,
    required this.categoryGrouped,
    required this.summaryController,
    required this.totalExpense,
    this.isScroll = false,
  });

  final List<MapEntry<Category, List<Expense>>> categoryGrouped;
  final double totalExpense;
  final SummaryController summaryController;
  final bool isScroll;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: isScroll ? null : const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: categoryGrouped.length,
      itemBuilder: (context, index) {
        final MapEntry<Category, List<Expense>> map = categoryGrouped[index];
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Icon(
                      IconData(
                        map.key.icon,
                        fontFamily: 'Material Design Icons',
                        fontPackage: 'material_design_icons_flutter',
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(map.key.name),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: LinearProgressIndicator(
                          value: map.value.totalExpense / totalExpense,
                          color: Color(
                              map.key.color ?? Colors.amber.shade100.value),
                        ),
                      ),
                    ),
                  ),
                  Text(map.value.totalExpense.toCurrency())
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
