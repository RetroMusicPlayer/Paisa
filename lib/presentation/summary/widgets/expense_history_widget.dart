import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../common/constants/extensions.dart';
import '../../../common/constants/time.dart';
import '../../../common/constants/util.dart';
import '../../../common/enum/filter_budget.dart';
import '../../../data/expense/model/expense.dart';
import '../../../di/service_locator.dart';
import '../../budget_overview/widgets/filter_budget_widget.dart';
import 'expense_month_card.dart';

class ExpenseHistory extends StatefulWidget {
  const ExpenseHistory({Key? key}) : super(key: key);

  @override
  State<ExpenseHistory> createState() => _ExpenseHistoryState();
}

class _ExpenseHistoryState extends State<ExpenseHistory> {
  FilterBudget selectedType = FilterBudget.daily;
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<Box<Expense>>(
      valueListenable: locator.get<Box<Expense>>().listenable(),
      builder: (_, value, child) {
        final expenses = value.values.toList();
        if (expenses.isEmpty) {
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: Column(
                children: [
                  const Icon(
                    Icons.money_off_rounded,
                    size: 72,
                  ),
                  Text(
                    AppLocalizations.of(context)!.emptyExpensesMessage,
                  ),
                ],
              ),
            ),
          );
        }
        expenses.sort(((a, b) => b.time.compareTo(a.time)));
        final maps = groupBy(expenses,
            (Expense element) => element.time.formatted(selectedType));
        return Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 16,
            ),
            FilterBudgetWidget(
              onSelected: (budget) {
                selectedType = budget;
                setState(() {});
              },
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: maps.entries.length,
              itemBuilder: (_, mapIndex) {
                final expenses = maps.values.toList()[mapIndex];
                expenses.sort((a, b) => b.time.compareTo(a.time));
                return ExpenseMonthCardWidget(
                  title: maps.keys.toList()[mapIndex],
                  total: expenses.filterTotal,
                  expenses: expenses,
                );
              },
            ),
          ],
        );
      },
    );
  }
}
