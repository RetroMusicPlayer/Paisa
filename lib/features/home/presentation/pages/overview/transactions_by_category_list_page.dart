import 'package:flutter/material.dart';

import 'package:paisa/core/common.dart';
import 'package:paisa/core/extensions/provider_extension.dart';
import 'package:paisa/features/account/domain/entities/account_entity.dart';
import 'package:paisa/features/category/domain/entities/category.dart';
import 'package:paisa/features/home/presentation/pages/summary/widgets/expense_item_widget.dart';
import 'package:paisa/features/transaction/domain/entities/transaction.dart';
import 'package:paisa/features/home/presentation/controller/summary_controller.dart';

import 'package:paisa/core/widgets/paisa_widget.dart';

class TransactionByCategoryListPage extends StatelessWidget {
  const TransactionByCategoryListPage({
    super.key,
    required this.categoryId,
    required this.summaryController,
  });

  final String categoryId;
  final SummaryController summaryController;

  @override
  Widget build(BuildContext context) {
    final int cid = int.parse(categoryId);
    final List<TransactionEntity> expenses = context.findCategories(cid);

    return PaisaAnnotatedRegionWidget(
      color: Colors.blueAccent,
      child: Scaffold(
        appBar: context.materialYouAppBar(context.loc.transactionsByCategory),
        body: ListView.builder(
          shrinkWrap: true,
          itemCount: expenses.length,
          itemBuilder: (BuildContext context, int index) {
            final AccountEntity? account =
                context.findAccount(expenses[index].accountId ?? -1);
            final CategoryEntity? category =
                context.findCategory(expenses[index].categoryId ?? -1);
            if (account == null || category == null) {
              return const SizedBox.shrink();
            }
            return ExpenseItemWidget(
              transaction: expenses[index],
              account: account,
              category: category,
            );
          },
        ),
      ),
    );
  }
}
