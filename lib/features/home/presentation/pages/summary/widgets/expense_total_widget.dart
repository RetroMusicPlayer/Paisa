import 'package:flutter/material.dart';

import 'package:paisa/core/common.dart';
import 'package:paisa/core/widgets/paisa_widget.dart';
import 'package:paisa/features/home/presentation/pages/summary/widgets/expense_total_for_month_widget.dart';
import 'package:paisa/features/home/presentation/pages/summary/widgets/total_balance_widget.dart';

class ExpenseTotal {
  final double totalExpenseBalance;
  final double totalExpenses;
  final double totalIncome;
  final double totalAccountBalance;

  ExpenseTotal({
    required this.totalExpenseBalance,
    required this.totalExpenses,
    required this.totalIncome,
    required this.totalAccountBalance,
  });
}

class ExpenseTotalWidget extends StatelessWidget {
  const ExpenseTotalWidget({
    Key? key,
    required this.expenseTotal,
  }) : super(key: key);

  final ExpenseTotal expenseTotal;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8, left: 8, right: 8),
      child: PaisaCard(
        elevation: 0,
        color: context.primaryContainer,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              TotalBalanceWidget(
                title: context.loc.totalBalance,
                amount: expenseTotal.totalExpenseBalance +
                    expenseTotal.totalAccountBalance,
              ),
              const SizedBox(height: 24),
              ExpenseTotalForMonthWidget(
                expense: expenseTotal.totalExpenses,
                income: expenseTotal.totalIncome,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
