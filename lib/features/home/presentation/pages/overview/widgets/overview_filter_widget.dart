import 'package:flutter/material.dart';

import 'package:paisa/features/home/presentation/pages/overview/widgets/overview_mobile_widget.dart';
import 'package:paisa/features/home/presentation/pages/overview/widgets/overview_tablet_widget.dart';
import 'package:paisa/features/home/presentation/controller/summary_controller.dart';
import 'package:responsive_builder/responsive_builder.dart';

class OverviewFilter extends StatelessWidget {
  const OverviewFilter({
    super.key,
    required this.summaryController,
  });

  final SummaryController summaryController;

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      tablet: (p0) => const OverviewTablet(),
      mobile: (p0) => const OverviewMobile(),
    );
  }
}
