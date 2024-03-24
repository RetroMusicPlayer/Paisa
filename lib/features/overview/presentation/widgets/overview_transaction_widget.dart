// Flutter imports:
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:hive_flutter/hive_flutter.dart';

// Project imports:
import 'package:paisa/core/common.dart';
import 'package:paisa/core/common_enum.dart';
import 'package:paisa/core/widgets/paisa_widgets/paisa_empty_widget.dart';
import 'package:paisa/features/home/presentation/controller/summary_controller.dart';
import 'package:paisa/features/transaction/data/model/transaction_model.dart';
import 'package:paisa/features/transaction/domain/entities/transaction_entity.dart';
import 'package:paisa/main.dart';

class OverviewTransactionWidget extends StatelessWidget {
  const OverviewTransactionWidget({
    super.key,
    required this.builder,
  });

  final Widget Function(Iterable<TransactionEntity> models) builder;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<Box<TransactionModel>>(
      valueListenable: getIt<Box<TransactionModel>>().listenable(),
      builder: (context, expenseBox, _) {
        if (expenseBox.values.isEmpty) {
          return EmptyWidget(
            icon: Icons.paid,
            title: context.loc.emptyOverviewMessageTitle,
            description: context.loc.emptyOverviewMessageSubtitle,
          );
        }
        return FilterDateRangeWidget(
          dateTimeRangeNotifier:
              getIt<SummaryController>().dateTimeRangeNotifier,
          expenses: expenseBox.values.toEntities(),
          builder: (transactions) {
            return builder(transactions);
          },
        );
      },
    );
  }
}

class FilterTransactionTypeWidget extends StatelessWidget {
  const FilterTransactionTypeWidget({
    super.key,
    required this.valueNotifier,
    required this.builder,
    required this.transactions,
  });

  final Widget Function(List<TransactionEntity> transactions) builder;
  final Iterable<TransactionEntity> transactions;
  final ValueNotifier<TransactionType> valueNotifier;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<TransactionType>(
      valueListenable: valueNotifier,
      builder: (context, value, child) {
        return builder.call(transactions.budgetOverView(value));
      },
    );
  }
}

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

class FilterGroupCategoryTransactionWidget extends StatelessWidget {
  const FilterGroupCategoryTransactionWidget({
    super.key,
    required this.valueNotifier,
    required this.builder,
    required this.transactions,
  });

  final Widget Function(
    Map<String, List<TransactionEntity>> groupedTransactions,
  ) builder;
  final Iterable<TransactionEntity> transactions;
  final ValueNotifier<FilterExpense> valueNotifier;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<FilterExpense>(
      valueListenable: valueNotifier,
      builder: (context, value, child) {
        final Map<String, List<TransactionEntity>> groupedTransactions =
            groupBy(
          transactions,
          (p0) => p0.time.formatted(value, monthFormat: 'MMM yy'),
        );
        return builder(groupedTransactions);
      },
    );
  }
}

class FilterGroupedDateWidget extends StatelessWidget {
  const FilterGroupedDateWidget({
    super.key,
    required this.valueNotifier,
    required this.builder,
    required this.mapTransactions,
  });
  final ValueNotifier<String> valueNotifier;
  final Widget Function(List<TransactionEntity> transactions) builder;
  final Map<String, List<TransactionEntity>> mapTransactions;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<String>(
      valueListenable: valueNotifier,
      builder: (context, value, child) {
        return builder.call(mapTransactions[value] ?? []);
      },
    );
  }
}

class OverviewBarChartData {
  OverviewBarChartData({
    required this.xLabel,
    required this.expense,
    required this.income,
  });

  final double expense;
  final double income;
  final String xLabel;
}
