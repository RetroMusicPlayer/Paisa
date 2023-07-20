import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paisa/core/common.dart';
import 'package:paisa/features/home/presentation/pages/summary/widgets/expense_history_widget.dart';
import 'package:paisa/features/home/presentation/pages/summary/widgets/expense_total_widget.dart';
import 'package:paisa/features/home/presentation/pages/summary/widgets/welcome_name_widget.dart';
import 'package:paisa/features/transaction/domain/entities/expense.dart';

class SummaryMobileWidget extends StatelessWidget {
  const SummaryMobileWidget({
    super.key,
    required this.expenses,
  });

  final List<Transaction> expenses;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.surface,
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        itemCount: 4,
        padding: const EdgeInsets.only(bottom: 124),
        itemBuilder: (context, index) {
          if (index == 0) {
            return const WelcomeNameWidget();
          } else if (index == 1) {
            return ExpenseTotalWidget(expenses: expenses);
          } else if (index == 2) {
            return ListTile(
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 0,
              ),
              title: Text(
                context.loc.transactions,
                style: GoogleFonts.outfit(
                  fontWeight: FontWeight.w600,
                  textStyle: context.titleMedium,
                  color: context.onBackground,
                ),
              ),
            );
          } else if (index == 3) {
            return ExpenseHistoryWidget(expenses: expenses);
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
