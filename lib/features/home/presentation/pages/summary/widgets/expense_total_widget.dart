import 'package:flutter/material.dart';
import 'package:paisa/core/common.dart';
import 'package:paisa/features/account/domain/entities/account_entity.dart';
import 'package:paisa/features/home/presentation/pages/summary/widgets/expense_total_for_month_widget.dart';
import 'package:paisa/features/home/presentation/pages/summary/widgets/total_balance_widget.dart';
import 'package:paisa/features/transaction/domain/entities/transaction.dart';
import 'package:paisa/core/widgets/paisa_widget.dart';
import 'package:provider/provider.dart';

class ExpenseTotalWidget extends StatelessWidget {
  const ExpenseTotalWidget({
    Key? key,
    required this.expenses,
  }) : super(key: key);

  final List<TransactionEntity> expenses;

  @override
  Widget build(BuildContext context) {
    final totalExpenseBalance = expenses.fullTotal;
    final totalExpenses = expenses.totalExpense;
    final totalIncome = expenses.totalIncome;
    final totalAccountBalance =
        Provider.of<AccountEntity>(context).initialAmount;

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
                amount: totalExpenseBalance + totalAccountBalance,
              ),
              const SizedBox(height: 24),
              ExpenseTotalForMonthWidget(
                expense: totalExpenses,
                income: totalIncome,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
