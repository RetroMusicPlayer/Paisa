import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../../main.dart';
import '../../../core/common.dart';
import '../../../core/enum/debt_type.dart';
import '../../../data/debt/models/debt_model.dart';
import '../../widgets/paisa_empty_widget.dart';
import '../widgets/debt_item_widget.dart';

class DebtsPage extends StatefulWidget {
  const DebtsPage({super.key});

  @override
  State<DebtsPage> createState() => _DebtsPageState();
}

class _DebtsPageState extends State<DebtsPage>
    with SingleTickerProviderStateMixin {
  DebtType selectedType = DebtType.debt;

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
                    Tab(text: context.loc.debtLabel),
                    Tab(text: context.loc.creditLabel),
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
                            title: context.loc.emptyDebtsLabel,
                            icon: MdiIcons.cashMinus,
                            description: context.loc.emptyDebtsDescLabel,
                          );
                  },
                ),
                Builder(
                  builder: (context) {
                    return credits.isNotEmpty
                        ? DebtsListWidget(debts: credits)
                        : EmptyWidget(
                            title: context.loc.emptyCreditLabel,
                            icon: MdiIcons.cashMinus,
                            description: context.loc.emptyCreditDescLabel,
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

class DebtsListWidget extends StatelessWidget {
  const DebtsListWidget({
    super.key,
    required this.debts,
  });

  final List<DebtModel> debts;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.only(top: 8, bottom: 124),
      shrinkWrap: true,
      itemCount: debts.length,
      itemBuilder: (context, index) => DebtItemWidget(
        debt: debts[index],
      ),
    );
  }
}
