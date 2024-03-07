import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

import 'package:paisa/core/common.dart';
import 'package:paisa/core/common_enum.dart';
import 'package:paisa/core/widgets/paisa_widget.dart';
import 'package:paisa/features/home/presentation/controller/summary_controller.dart';
import 'package:paisa/features/home/presentation/pages/summary/widgets/expense_month_card.dart';
import 'package:paisa/features/transaction/domain/entities/transaction.dart';

class AccountHistoryWidget extends StatelessWidget {
  const AccountHistoryWidget({
    super.key,
    required this.expenses,
    required this.summaryController,
  });

  final List<TransactionEntity> expenses;
  final SummaryController summaryController;

  @override
  Widget build(BuildContext context) {
    if (expenses.isEmpty) {
      return EmptyWidget(
        title: context.loc.emptyExpensesMessageTitle,
        icon: Icons.money_off_rounded,
        description: context.loc.emptyExpensesMessageSubTitle,
      );
    } else {
      return ValueListenableBuilder<FilterExpense>(
        valueListenable: summaryController.sortHomeExpenseNotifier,
        builder: (_, value, __) {
          final maps = groupBy(expenses,
              (TransactionEntity element) => element.time!.formatted(value));
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
        },
      );
    }
  }
}
