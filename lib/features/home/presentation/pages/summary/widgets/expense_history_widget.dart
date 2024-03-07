import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

import 'package:paisa/core/common.dart';
import 'package:paisa/core/common_enum.dart';

import 'package:paisa/core/widgets/paisa_widget.dart';
import 'package:paisa/features/transaction/domain/entities/transaction.dart';

import 'expense_month_card.dart';

class ExpenseHistoryWidget extends StatelessWidget {
  const ExpenseHistoryWidget({
    super.key,
    required this.transactions,
  });

  final List<TransactionEntity> transactions;

  @override
  Widget build(BuildContext context) {
    if (transactions.isEmpty) {
      return EmptyWidget(
        title: context.loc.emptyExpensesMessageTitle,
        icon: Icons.money_off_rounded,
        description: context.loc.emptyExpensesMessageSubTitle,
      );
    } else {
      final maps = groupBy(
          transactions,
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
            transactions: maps.values.elementAt(mapIndex),
          );
        },
      );
    }
  }
}
