// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:paisa/features/home/presentation/controller/summary_controller.dart';
import 'package:paisa/features/transaction/domain/entities/transaction_entity.dart';
import 'package:responsive_builder/responsive_builder.dart';

// Project imports:
import 'package:paisa/features/home/presentation/pages/summary/widgets/summary_desktop_widget.dart';
import 'package:paisa/features/home/presentation/pages/summary/widgets/summary_mobile_widget.dart';
import 'package:paisa/features/home/presentation/pages/summary/widgets/summary_tablet_widget.dart';
import 'package:paisa/main.dart';

class SummaryPage extends StatelessWidget {
  const SummaryPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final summaryController = getIt<SummaryController>();
    return FutureBuilder<List<TransactionEntity>>(
      future: summaryController.getRecentTransactions(20),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        } else {
          final transactions = snapshot.data ?? [];
          return ScreenTypeLayout.builder(
            mobile: (p0) => SummaryMobileWidget(expenses: transactions),
            tablet: (p0) => SummaryTabletWidget(expenses: transactions),
            desktop: (p0) => SummaryDesktopWidget(expenses: transactions),
          );
        }
      },
    );
  }
}
