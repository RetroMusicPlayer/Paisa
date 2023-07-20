import 'package:flutter/material.dart';

import 'package:paisa/features/home/presentation/cubit/overview/overview_cubit.dart';
import 'package:paisa/features/home/presentation/pages/overview/widgets/overview_mobile_widget.dart';
import 'package:paisa/features/home/presentation/pages/overview/widgets/overview_tablet_widget.dart';
import 'package:paisa/features/home/presentation/controller/summary_controller.dart';
import 'package:responsive_builder/responsive_builder.dart';

class OverviewFilter extends StatelessWidget {
  const OverviewFilter({
    super.key,
    required this.budgetCubit,
    required this.summaryController,
  });

  final OverviewCubit budgetCubit;
  final SummaryController summaryController;

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      tablet: OverviewTablet(
        summaryController: summaryController,
        budgetCubit: budgetCubit,
      ),
      mobile: OverviewMobile(
        summaryController: summaryController,
        budgetCubit: budgetCubit,
      ),
    );
  }
}
