import 'package:flutter/material.dart';
import 'package:paisa/features/transaction/domain/entities/transaction.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'package:paisa/features/home/presentation/pages/summary/widgets/summary_desktop_widget.dart';
import 'package:paisa/features/home/presentation/pages/summary/widgets/summary_mobile_widget.dart';
import 'package:paisa/features/home/presentation/pages/summary/widgets/summary_tablet_widget.dart';

class SummaryPage extends StatelessWidget {
  const SummaryPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<TransactionEntity> transactions =
        Provider.of<List<TransactionEntity>>(context);
    return ScreenTypeLayout.builder(
      mobile: (p0) => SummaryMobileWidget(
        transactions: transactions,
      ),
      tablet: (p0) => SummaryTabletWidget(
        transactions: transactions,
      ),
      desktop: (p0) => SummaryDesktopWidget(
        transactions: transactions,
      ),
    );
  }
}
