import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../../../main.dart';
import '../../../../core/common.dart';
import '../../../../core/theme/custom_color.dart';
import '../../../../data/accounts/data_sources/account_local_data_source.dart';
import '../../../../data/category/data_sources/category_local_data_source.dart';
import '../../../../data/expense/model/expense.dart';
import '../../../summary/widgets/expense_item_widget.dart';
import '../../../widgets/paisa_bottom_sheet.dart';
import '../../bloc/accounts_bloc.dart';

class AccountTransactionPage extends StatelessWidget {
  AccountTransactionPage({
    Key? key,
    required this.accountId,
  }) : super(key: key);

  final String accountId;
  final LocalAccountManagerDataSource accountLocalDataSource = getIt.get();
  final LocalCategoryManagerDataSource categoryLocalDataSource = getIt.get();
  final AccountsBloc accountsBloc = getIt.get();

  @override
  Widget build(BuildContext context) {
    final int accountIdInt = int.parse(accountId);
    final expenses = getIt.get<Box<Expense>>().allAccount(accountIdInt);
    final account = accountLocalDataSource.fetchAccount(accountIdInt);
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        title: ListTile(
          horizontalTitleGap: 0,
          title: Text(account.name),
          subtitle: Text(account.bankName),
        ),
        actions: [
          IconButton(
            onPressed: () => paisaAlertDialog(
              context,
              title: Text(context.loc.dialogDeleteTitleLabel),
              child: RichText(
                text: TextSpan(
                  text: context.loc.deleteAccountLabel,
                  style: Theme.of(context).textTheme.bodyMedium,
                  children: [
                    TextSpan(
                      text: account.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              confirmationButton: TextButton(
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                ),
                onPressed: () {
                  accountsBloc.add(DeleteAccountEvent(account));
                  Navigator.pop(context);
                },
                child: Text(context.loc.deleteLabel),
              ),
            ),
            icon: Icon(
              MdiIcons.delete,
              color: Theme.of(context).extension<CustomColors>()!.red,
            ),
          )
        ],
      ),
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: expenses.length,
        itemBuilder: (context, index) {
          return ExpenseItemWidget(
            expense: expenses[index],
            account: account,
            category: categoryLocalDataSource
                .fetchCategory(expenses[index].categoryId),
          );
        },
      ),
    );
  }
}