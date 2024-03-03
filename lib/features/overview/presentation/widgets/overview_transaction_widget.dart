// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:hive_flutter/hive_flutter.dart';

// Project imports:
import 'package:paisa/core/common.dart';
import 'package:paisa/core/widgets/paisa_widgets/paisa_empty_widget.dart';
import 'package:paisa/features/home/presentation/controller/summary_controller.dart';
import 'package:paisa/features/overview/presentation/widgets/filter_date_range_widget.dart';
import 'package:paisa/features/transaction/data/model/transaction_model.dart';
import 'package:paisa/features/transaction/domain/entities/transaction_entity.dart';
import 'package:paisa/main.dart';

class OverviewTransactionWidget extends StatelessWidget {
  const OverviewTransactionWidget({super.key, required this.builder});

  final Widget Function(Iterable<TransactionEntity> models) builder;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<Box<TransactionModel>>(
      valueListenable: getIt.get<Box<TransactionModel>>().listenable(),
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
          builder: (expenses) {
            if (expenses.isEmpty) {
              return EmptyWidget(
                icon: Icons.paid,
                title: context.loc.emptyOverviewMessageTitle,
                description: context.loc.emptyOverviewMessageSubtitle,
              );
            }

            return builder(expenses);
          },
        );
      },
    );
  }
}
