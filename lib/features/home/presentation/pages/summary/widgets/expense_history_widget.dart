// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:collection/collection.dart';

// Project imports:
import 'package:paisa/core/common.dart';
import 'package:paisa/core/common_enum.dart';
import 'package:paisa/core/widgets/paisa_widget.dart';
import 'package:paisa/features/transaction/domain/entities/transaction_entity.dart';
import 'package:paisa/features/home/presentation/pages/summary/widgets/expense_month_card.dart';

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
    }
    final maps = groupBy(
      expenses,
      (TransactionEntity element) =>
          element.time.formatted(FilterExpense.monthly),
    );

    return ListView.separated(
      separatorBuilder: (context, index) => const Divider(),
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: maps.entries.length,
      itemBuilder: (_, mapIndex) => ExpenseMonthCardWidget(
        title: maps.keys.elementAtOrNull(mapIndex)!,
        total: maps.values.elementAtOrNull(mapIndex)!.filterTotal,
        expenses: maps.values.elementAtOrNull(mapIndex)!,
      ),
    );
  }
}
