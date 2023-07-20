import 'package:flutter/material.dart';
import 'package:paisa/features/home/presentation/pages/summary/widgets/expense_history_widget.dart';
import 'package:paisa/features/home/presentation/pages/summary/widgets/expense_total_widget.dart';
import 'package:paisa/features/home/presentation/pages/summary/widgets/welcome_name_widget.dart';
import 'package:paisa/features/transaction/domain/entities/expense.dart';

class SummaryDesktopWidget extends StatelessWidget {
  const SummaryDesktopWidget({
    super.key,
    required this.expenses,
  });

  final List<Transaction> expenses;

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
                    ExpenseTotalWidget(expenses: expenses),
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.only(bottom: 124),
                  children: [
                    ExpenseHistoryWidget(expenses: expenses),
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
