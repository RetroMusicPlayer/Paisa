import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../../main.dart';
import '../../../core/common.dart';
import '../../../core/enum/debt_type.dart';
import '../../../data/debt/models/debt_model.dart';
import '../../widgets/paisa_empty_widget.dart';
import '../widgets/debt_list_widget.dart';

class DebtsPage extends StatelessWidget {
  const DebtsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Material(
                borderRadius: BorderRadius.circular(32),
                color: Theme.of(context).colorScheme.surfaceVariant,
                child: TabBar(
                  dividerColor: Colors.transparent,
                  splashBorderRadius: BorderRadius.circular(32),
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(32),
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  indicatorSize: TabBarIndicatorSize.tab,
                  labelColor: Theme.of(context).colorScheme.onPrimary,
                  unselectedLabelColor:
                      Theme.of(context).colorScheme.onSurfaceVariant,
                  labelStyle: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(fontWeight: FontWeight.bold),
                  unselectedLabelStyle: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(fontWeight: FontWeight.bold),
                  tabs: [
                    Tab(text: context.loc.debt),
                    Tab(text: context.loc.credit),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: ValueListenableBuilder<Box<DebtModel>>(
          valueListenable: getIt.get<Box<DebtModel>>().listenable(),
          builder: (context, value, child) {
            final debts = value.values
                .where((element) => element.debtType == DebtType.debt)
                .toList();

            final credits = value.values
                .where((element) => element.debtType == DebtType.credit)
                .toList();

            return TabBarView(
              children: [
                Builder(
                  builder: (context) {
                    return debts.isNotEmpty
                        ? DebtsListWidget(debts: debts)
                        : EmptyWidget(
                            title: context.loc.emptyDebts,
                            icon: MdiIcons.cashMinus,
                            description: context.loc.emptyDebtsDesc,
                          );
                  },
                ),
                Builder(
                  builder: (context) {
                    return credits.isNotEmpty
                        ? DebtsListWidget(debts: credits)
                        : EmptyWidget(
                            title: context.loc.emptyCredit,
                            icon: MdiIcons.cashMinus,
                            description: context.loc.emptyCreditDesc,
                          );
                  },
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
