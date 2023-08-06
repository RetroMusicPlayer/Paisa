import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:paisa/core/common.dart';
import 'package:paisa/features/home/presentation/pages/summary/widgets/summary_desktop_widget.dart';
import 'package:paisa/features/home/presentation/pages/summary/widgets/summary_mobile_widget.dart';
import 'package:paisa/features/home/presentation/pages/summary/widgets/summary_tablet_widget.dart';
import 'package:paisa/features/transaction/data/model/transaction_model.dart';
import 'package:paisa/main.dart';
import 'package:responsive_builder/responsive_builder.dart';

class SummaryPage extends StatelessWidget {
  const SummaryPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<Box<TransactionModel>>(
      valueListenable: getIt.get<Box<TransactionModel>>().listenable(),
      builder: (_, value, child) {
        final expenses = value.values.toEntities().reversed.toList();
        return ScreenTypeLayout(
          mobile: SummaryMobileWidget(expenses: expenses),
          tablet: SummaryTabletWidget(expenses: expenses),
          desktop: SummaryDesktopWidget(expenses: expenses),
        );
      },
    );
  }
}
