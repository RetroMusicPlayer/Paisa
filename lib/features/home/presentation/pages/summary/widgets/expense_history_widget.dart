import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

import 'package:paisa/core/common.dart';
import 'package:paisa/core/common_enum.dart';
import 'package:paisa/features/transaction/domain/entities/transaction.dart';

import 'package:paisa/core/widgets/paisa_widget.dart';
import 'expense_month_card.dart';

class ExpenseHistoryWidget extends StatelessWidget {
  const ExpenseHistoryWidget({
    super.key,
    required this.expenses,
  });

  final List<TransactionEntity> expenses;

  @override
  Widget build(BuildContext context) {
    if (expenses.isEmpty) {
      return EmptyWidget(
        title: context.loc.emptyExpensesMessageTitle,
        icon: Icons.money_off_rounded,
        description: context.loc.emptyExpensesMessageSubTitle,
      );
    } else {
      final maps = groupBy(
          expenses,
          (TransactionEntity element) =>
              element.time!.formatted(FilterExpense.monthly));
      return ListView.separated(
        separatorBuilder: (context, index) => const Divider(),
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: maps.entries.length,
        itemBuilder: (_, mapIndex) {
          return ExpenseMonthCardWidget(
            title: maps.keys.elementAt(mapIndex),
            total: maps.values.elementAt(mapIndex).filterTotal,
            expenses: maps.values.elementAt(mapIndex),
          );
        },
      );
    }
  }
}
