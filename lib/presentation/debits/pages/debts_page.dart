import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../../common/widgets/paisa_card.dart';
import 'package:go_router/go_router.dart';
import 'package:hive_flutter/adapters.dart';

import '../../../app/routes.dart';
import '../../../common/constants/currency.dart';
import '../../../common/enum/debt_type.dart';
import '../../../data/debt/models/debt.dart';
import '../../../di/service_locator.dart';
import '../cubit/debts_cubit.dart';

class DebtsPage extends StatefulWidget {
  const DebtsPage({super.key});

  @override
  State<DebtsPage> createState() => _DebtsPageState();
}

class _DebtsPageState extends State<DebtsPage>
    with SingleTickerProviderStateMixin {
  late final TabController controller = TabController(
    length: 2,
    vsync: this,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              title: Text(AppLocalizations.of(context)!.debtsLabel),
              pinned: true,
              titleTextStyle: Theme.of(context)
                  .textTheme
                  .headline6
                  ?.copyWith(fontWeight: FontWeight.bold),
              floating: true,
              bottom: TabBar(
                controller: controller,
                labelStyle: Theme.of(context).textTheme.bodyText2,
                labelColor: Theme.of(context).colorScheme.primary,
                indicatorColor: Theme.of(context).colorScheme.primary,
                tabs: [
                  Tab(
                    text: AppLocalizations.of(context)!.debtLabel,
                  ),
                  Tab(
                    text: AppLocalizations.of(context)!.creditLabel,
                  ),
                ],
              ),
            ),
          ];
        },
        body: ValueListenableBuilder<Box<Debt>>(
          valueListenable: locator.get<Box<Debt>>().listenable(),
          builder: (context, value, child) {
            final debts = value.values
                .where((element) => element.debtType == DebtType.debt)
                .toList();

            final credits = value.values
                .where((element) => element.debtType == DebtType.credit)
                .toList();

            return TabBarView(
              controller: controller,
              children: [
                Builder(builder: (context) {
                  if (debts.isNotEmpty) {
                    return DebtsListWidget(debts: debts);
                  }
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }),
                Builder(
                  builder: (context) {
                    if (debts.isNotEmpty) {
                      return DebtsListWidget(debts: credits);
                    }
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                ),
              ],
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton.large(
        onPressed: () {
          GoRouter.of(context).goNamed(addDebitName);
        },
        heroTag: 'add_account',
        key: const Key('add_account'),
        tooltip: AppLocalizations.of(context)!.addAccountLabel,
        child: const Icon(Icons.add),
      ),
    );
  }
}

class DebtsListWidget extends StatelessWidget {
  final List<Debt> debts;

  const DebtsListWidget({
    super.key,
    required this.debts,
  });
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      itemCount: debts.length,
      itemBuilder: (context, index) {
        final double amount = debts[index].transactions.fold<double>(
            0, (previousValue, element) => previousValue + element.amount);
        return PaisaCard(
          child: ListTile(
            onTap: () => context.goNamed(
              debitAddOrEditPath,
              params: {'did': debts[index].superId.toString()},
            ),
            leading: GestureDetector(
              onTap: () {
                locator.get<DebtsBloc>().add(
                      AddTransactionToDebtEvent(
                        debts[index],
                        10,
                      ),
                    );
              },
              child: const Text('Pay'),
            ),
            title: Text(debts[index].name),
            subtitle: Text(debts[index].description),
            trailing: Text(
              formattedCurrency(debts[index].amount - amount),
              style: TextStyle(
                color: Theme.of(context).colorScheme.error,
              ),
            ),
          ),
        );
      },
    );
  }
}
