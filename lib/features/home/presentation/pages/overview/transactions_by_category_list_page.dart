import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:paisa/core/common.dart';
import 'package:paisa/features/account/domain/entities/account_entity.dart';
import 'package:paisa/features/category/domain/entities/category.dart';
import 'package:paisa/features/home/presentation/bloc/home/home_bloc.dart';
import 'package:paisa/features/home/presentation/cubit/overview/overview_cubit.dart';
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
    final List<TransactionEntity> expenses =
        BlocProvider.of<OverviewCubit>(context, listen: false)
            .transactionsForCategoryId(cid);

    return PaisaAnnotatedRegionWidget(
      color: Colors.blueAccent,
      child: Scaffold(
        appBar: context.materialYouAppBar(context.loc.transactionsByCategory),
        body: ListView.builder(
          shrinkWrap: true,
          itemCount: expenses.length,
          itemBuilder: (BuildContext context, int index) {
            final AccountEntity? account = BlocProvider.of<HomeBloc>(context)
                .fetchAccountFromId(expenses[index].accountId);
            final CategoryEntity? category = BlocProvider.of<HomeBloc>(context)
                .fetchCategoryFromId(expenses[index].categoryId);
            if (account == null || category == null) {
              return const SizedBox.shrink();
            }
            return ExpenseItemWidget(
              expense: expenses[index],
              account: account,
              category: category,
            );
          },
        ),
      ),
    );
  }
}
