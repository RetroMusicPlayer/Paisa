import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:paisa/features/home/presentation/controller/summary_controller.dart';
import 'package:provider/provider.dart';

import 'filter_budget_widget.dart';

class PaisaFilterTransactionWidget extends StatelessWidget {
  const PaisaFilterTransactionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        showModalBottomSheet(
          context: context,
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width >= 700
                ? 700
                : double.infinity,
          ),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
          ),
          builder: (context) {
            return FilterBudgetToggleWidget(
              showAsList: true,
              summaryController: Provider.of<SummaryController>(context),
            );
          },
        );
      },
      icon: Icon(MdiIcons.filter),
    );
  }
}
