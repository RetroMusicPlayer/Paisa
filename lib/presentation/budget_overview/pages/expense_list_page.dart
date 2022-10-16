import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:hive_flutter/adapters.dart';

import '../../../common/constants/extensions.dart';
import '../../../data/accounts/data_sources/account_local_data_source.dart';
import '../../../data/expense/model/expense.dart';
import '../../../di/service_locator.dart';
import '../../summary/widgets/expense_item_widget.dart';

class ExpenseListPage extends StatelessWidget {
  const ExpenseListPage({
    super.key,
    required this.categoryId,
  });

  final String? categoryId;

  @override
  Widget build(BuildContext context) {
    final int? cid = int.tryParse(categoryId ?? '');
    return Scaffold(
      appBar: context.materialYouAppBar(
        AppLocalizations.of(context)!.expenseByCategoryLabel,
      ),
      body: ValueListenableBuilder<Box<Expense>>(
        valueListenable: locator.get<Box<Expense>>().listenable(),
        builder: (context, value, _) {
          final expenses = value.values
              .where((element) => element.categoryId == cid)
              .toList();
          if (expenses.isEmpty) {
            return const Text('No data');
          }

          return ListView.builder(
            shrinkWrap: true,
            itemCount: expenses.length,
            itemBuilder: (BuildContext context, int index) {
              return ExpenseItemWidget(
                expense: expenses[index],
                account: locator
                    .get<AccountLocalDataSource>()
                    .fetchAccount(expenses[index].accountId),
              );
            },
          );
        },
      ),
    );
  }
}
