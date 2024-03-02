// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:paisa/core/common.dart';
import 'package:paisa/features/transaction/domain/entities/transaction_entity.dart';

class FilterDateRangeWidget extends StatelessWidget {
  const FilterDateRangeWidget({
    super.key,
    required this.builder,
    required this.expenses,
    required this.dateTimeRangeNotifier,
  });

  final Widget Function(List<TransactionEntity> expenses) builder;
  final ValueNotifier<DateTimeRange?> dateTimeRangeNotifier;
  final Iterable<TransactionEntity> expenses;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<DateTimeRange?>(
      valueListenable: dateTimeRangeNotifier,
      builder: (context, value, child) {
        return value != null
            ? builder.call(expenses.isFilterTimeBetween(value))
            : builder.call(expenses.toList());
      },
    );
  }
}
