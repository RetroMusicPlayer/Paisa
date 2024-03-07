import 'package:flutter/material.dart';
import 'package:paisa/core/extensions/provider_extension.dart';
import 'package:paisa/features/account/domain/entities/account_entity.dart';
import 'package:paisa/features/category/domain/entities/category.dart';
import 'package:paisa/features/transaction/domain/entities/transaction.dart';

import 'expense_item_widget.dart';

class ExpenseListWidget extends StatelessWidget {
  const ExpenseListWidget({
    Key? key,
    required this.expenses,
  }) : super(key: key);

  final List<TransactionEntity> expenses;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => const Divider(
        indent: 72,
        height: 0,
      ),
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: expenses.length,
      itemBuilder: (_, index) {
        final TransactionEntity expense = expenses[index];
        final AccountEntity? account =
            context.findAccount(expense.accountId ?? -1);
        final CategoryEntity? category =
            context.findCategory(expense.categoryId ?? -1);
        if (account == null || category == null) {
          return const SizedBox.shrink();
        } else {
          return ExpenseItemWidget(
            transaction: expense,
            account: account,
            category: category,
          );
        }
      },
    );
  }
}
