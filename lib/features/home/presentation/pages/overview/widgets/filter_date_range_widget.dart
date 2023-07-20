import 'package:flutter/material.dart';

import 'package:paisa/core/common.dart';
import 'package:paisa/features/transaction/domain/entities/expense.dart';

class FilterDateRangeWidget extends StatelessWidget {
  const FilterDateRangeWidget({
    super.key,
    required this.builder,
    required this.expenses,
    required this.dateTimeRangeNotifier,
  });

  final Widget Function(List<Transaction> expenses) builder;
  final ValueNotifier<DateTimeRange?> dateTimeRangeNotifier;
  final Iterable<Transaction> expenses;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<DateTimeRange?>(
      valueListenable: dateTimeRangeNotifier,
      builder: (context, value, child) {
        if (value != null) {
          return builder.call(expenses.isFilterTimeBetween(value));
        } else {
          return builder.call(expenses.toList());
        }
      },
    );
  }
}
