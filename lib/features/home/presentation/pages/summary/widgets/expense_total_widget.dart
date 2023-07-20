import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:paisa/core/common.dart';
import 'package:paisa/features/account/data/model/account_model.dart';
import 'package:paisa/features/account/presentation/widgets/account_summary_widget.dart';
import 'package:paisa/features/home/presentation/pages/summary/widgets/expense_total_for_month_widget.dart';
import 'package:paisa/features/home/presentation/pages/summary/widgets/total_balance_widget.dart';
import 'package:paisa/features/transaction/domain/entities/expense.dart';
import 'package:paisa/main.dart';
import 'package:paisa/core/widgets/paisa_widget.dart';

class ExpenseTotalWidget extends StatelessWidget {
  const ExpenseTotalWidget({
    Key? key,
    required this.expenses,
  }) : super(key: key);

  final List<Transaction> expenses;

  @override
  Widget build(BuildContext context) {
    final totalExpenseBalance = expenses.fullTotal;
    final totalExpenses = expenses.totalExpense;
    final totalIncome = expenses.totalIncome;
    final totalAccountBalance =
        getIt.get<Box<AccountModel>>().totalAccountInitialAmount;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
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
                    amount: totalExpenseBalance + totalAccountBalance,
                  ),
                  const SizedBox(height: 32),
                  ExpenseTotalForMonthWidget(
                    outcome: totalExpenses,
                    income: totalIncome,
                  ),
                ],
              ),
            ),
          ),
        ),
        AccountSummaryWidget(expenses: expenses),
      ],
    );
  }
}
