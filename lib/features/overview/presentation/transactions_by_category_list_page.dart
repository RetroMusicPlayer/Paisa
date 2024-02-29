// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:paisa/core/common.dart';
import 'package:paisa/core/widgets/paisa_widget.dart';
import 'package:paisa/features/account/domain/entities/account_entity.dart';
import 'package:paisa/features/category/domain/entities/category.dart';
import 'package:paisa/features/home/presentation/pages/home/home_cubit.dart';
import 'package:paisa/features/home/presentation/pages/summary/widgets/expense_item_widget.dart';
import 'package:paisa/features/transaction/domain/entities/transaction_entity.dart';

class TransactionByCategoryPage extends StatelessWidget {
  const TransactionByCategoryPage({
    super.key,
    required this.categoryId,
  });

  final int categoryId;

  @override
  Widget build(BuildContext context) {
    final List<TransactionEntity> expenses =
        context.read<HomeCubit>().fetchExpensesFromCategoryId(categoryId);

    return PaisaAnnotatedRegionWidget(
      color: Colors.transparent,
      child: Scaffold(
        extendBody: true,
        appBar: context.materialYouAppBar(context.loc.transactionsByCategory),
        bottomNavigationBar: SafeArea(
          child: PaisaFilledCard(
            child: ListTile(
              title: Text(
                context.loc.total,
                style: context.titleSmall
                    ?.copyWith(color: context.onSurfaceVariant),
              ),
              subtitle: Text(
                expenses.fullTotal.toFormateCurrency(context),
                style: context.titleMedium?.copyWith(
                  color: context.onSurfaceVariant,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        body: ListView.builder(
          shrinkWrap: true,
          itemCount: expenses.length,
          itemBuilder: (BuildContext context, int index) {
            final AccountEntity? account = BlocProvider.of<HomeCubit>(context)
                .fetchAccountFromId(expenses.elementAtOrNull(index)!.accountId);
            final CategoryEntity? category = BlocProvider.of<HomeCubit>(context)
                .fetchCategoryFromId(
                    expenses.elementAtOrNull(index)!.categoryId);
            if (account == null || category == null) {
              return const SizedBox.shrink();
            }

            return ExpenseItemWidget(
              expense: expenses.elementAtOrNull(index)!,
              account: account,
              category: category,
            );
          },
        ),
      ),
    );
  }
}
