import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:paisa/features/account/domain/entities/account.dart';
import 'package:paisa/features/category/domain/entities/category.dart';
import 'package:paisa/features/home/presentation/bloc/home/home_bloc.dart';
import 'package:paisa/features/transaction/domain/entities/expense.dart';
import 'package:paisa/features/home/presentation/controller/summary_controller.dart';

import 'expense_item_widget.dart';

class ExpenseListWidget extends StatelessWidget {
  const ExpenseListWidget({
    Key? key,
    required this.expenses,
    required this.summaryController,
  }) : super(key: key);

  final List<Transaction> expenses;
  final SummaryController summaryController;

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
        final Transaction expense = expenses[index];
        final AccountEntity? account = BlocProvider.of<HomeBloc>(context)
            .fetchAccountFromId(expense.accountId);
        final CategoryEntity? category = BlocProvider.of<HomeBloc>(context)
            .fetchCategoryFromId(expense.categoryId);
        if (account == null || category == null) {
          return const SizedBox.shrink();
        } else {
          return ExpenseItemWidget(
            expense: expense,
            account: account,
            category: category,
          );
        }
      },
    );
  }
}
