// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:provider/provider.dart';

// Project imports:
import 'package:paisa/features/home/presentation/controller/summary_controller.dart';
import 'package:paisa/core/widgets/filter_widget/filter_budget_widget.dart';

class PaisaFilterTransactionWidget extends StatelessWidget {
  const PaisaFilterTransactionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        showModalBottomSheet(
          context: context,
          constraints: BoxConstraints(
            maxWidth:
                MediaQuery.sizeOf(context).width >= 700 ? 700 : double.infinity,
          ),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
          ),
          builder: (context) {
            return FilterBudgetToggleWidget(
              summaryController: Provider.of<SummaryController>(context),
            );
          },
        );
      },
      icon: Icon(MdiIcons.filter),
    );
  }
}
