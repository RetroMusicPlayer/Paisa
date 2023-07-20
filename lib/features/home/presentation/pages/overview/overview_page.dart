import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:paisa/core/common.dart';
import 'package:paisa/core/common_enum.dart';
import 'package:paisa/features/home/presentation/cubit/overview/overview_cubit.dart';
import 'package:paisa/features/home/presentation/pages/overview/widgets/filter_budget_widget.dart';
import 'package:paisa/features/home/presentation/pages/overview/widgets/filter_date_range_widget.dart';
import 'package:paisa/features/home/presentation/pages/overview/widgets/overview_filter_widget.dart';
import 'package:paisa/features/home/presentation/pages/overview/widgets/overview_list_widget.dart';
import 'package:paisa/features/transaction/data/model/expense_model.dart';
import 'package:paisa/main.dart';
import 'package:paisa/features/home/presentation/controller/summary_controller.dart';
import 'package:paisa/core/widgets/paisa_widget.dart';

class OverViewPage extends StatelessWidget {
  const OverViewPage({
    Key? key,
    required this.summaryController,
    required this.budgetCubit,
  }) : super(key: key);

  final OverviewCubit budgetCubit;
  final SummaryController summaryController;

  @override
  Widget build(BuildContext context) {
    budgetCubit.fetchDefaultCategory();
    return ValueListenableBuilder<Box<TransactionModel>>(
      valueListenable: getIt.get<Box<TransactionModel>>().listenable(),
      builder: (context, expenseBox, _) {
        if (expenseBox.values.isEmpty) {
          return EmptyWidget(
            icon: Icons.paid,
            title: context.loc.emptyOverviewMessageTitle,
            description: context.loc.emptyOverviewMessageSubtitle,
          );
        }
        return FilterOverviewWidget(
          expenses: expenseBox.values,
          valueNotifier: summaryController.typeNotifier,
          builder: (expenses) {
            return FilterDateRangeWidget(
              dateTimeRangeNotifier: summaryController.dateTimeRangeNotifier,
              expenses: expenses,
              builder: (filterExpenses) {
                return ValueListenableBuilder<FilterExpense>(
                  valueListenable: summaryController.filterExpenseNotifier,
                  builder: (context, value, child) {
                    budgetCubit.fetchBudgetSummary(filterExpenses, value);
                    return Scaffold(
                      body: ListView(
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(),
                        children: [
                          OverviewFilter(
                            budgetCubit: budgetCubit,
                            summaryController: summaryController,
                          ),
                          OverviewListView(
                            budgetCubit: budgetCubit,
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
            );
          },
        );
      },
    );
  }
}
