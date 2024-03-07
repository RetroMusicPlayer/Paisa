import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:paisa/core/common.dart';
import 'package:paisa/core/enum/debt_type.dart';
import 'package:paisa/features/debit/data/models/debit_model.dart';
import 'package:paisa/features/debit/presentation/widgets/debt_list_widget.dart';
import 'package:paisa/main.dart';
import 'package:paisa/core/widgets/paisa_widget.dart';

class DebtsPage extends StatelessWidget {
  const DebtsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
            child: Material(
              borderRadius: BorderRadius.circular(32),
              color: context.surfaceVariant,
              child: TabBar(
                dividerColor: Colors.transparent,
                splashBorderRadius: BorderRadius.circular(32),
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(32),
                  color: context.primary,
                ),
                indicatorSize: TabBarIndicatorSize.tab,
                labelColor: context.onPrimary,
                unselectedLabelColor: context.onSurfaceVariant,
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
          Expanded(
            child: ValueListenableBuilder<Box<DebitModel>>(
              valueListenable: getIt.get<Box<DebitModel>>().listenable(),
              builder: (context, value, child) {
                final debts = value.values
                    .where((element) => element.debtType == DebitType.debit)
                    .toEntities();

                final credits = value.values
                    .where((element) => element.debtType == DebitType.credit)
                    .toEntities();

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
        ],
      ),
    );
  }
}
