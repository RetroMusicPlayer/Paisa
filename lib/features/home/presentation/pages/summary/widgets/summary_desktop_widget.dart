import 'package:flutter/material.dart';
import 'package:paisa/core/common.dart';
import 'package:paisa/features/account/domain/entities/account_entity.dart';
import 'package:paisa/features/home/presentation/pages/summary/widgets/expense_history_widget.dart';
import 'package:paisa/features/home/presentation/pages/summary/widgets/expense_total_widget.dart';
import 'package:paisa/features/home/presentation/pages/summary/widgets/welcome_name_widget.dart';
import 'package:paisa/features/transaction/domain/entities/transaction.dart';
import 'package:provider/provider.dart';

class SummaryDesktopWidget extends StatelessWidget {
  const SummaryDesktopWidget({
    super.key,
    required this.transactions,
  });

  final List<TransactionEntity> transactions;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        bottom: false,
        child: Expanded(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  children: [
                    const WelcomeNameWidget(),
                    ExpenseTotalWidget(
                      expenseTotal: ExpenseTotal(
                        totalExpenseBalance: transactions.fullTotal,
                        totalExpenses: transactions.totalExpense,
                        totalIncome: transactions.totalIncome,
                        totalAccountBalance:
                            Provider.of<List<AccountEntity>>(context)
                                .initialAmount,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.only(bottom: 124),
                  children: [
                    ExpenseHistoryWidget(transactions: transactions),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
