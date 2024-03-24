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
    final Future<List<TransactionEntity>> expensesFuture =
        context.read<HomeCubit>().fetchExpensesFromCategoryId(categoryId);

    return PaisaAnnotatedRegionWidget(
      color: Colors.transparent,
      child: FutureBuilder<List<TransactionEntity>>(
        future: expensesFuture,
        builder: (context, expensesSnapshot) {
          if (expensesSnapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          } else if (expensesSnapshot.hasError) {
            return Text('Error: ${expensesSnapshot.error}');
          } else {
            final List<TransactionEntity> expenses = expensesSnapshot.data!;
            return Scaffold(
              extendBody: true,
              appBar:
                  context.materialYouAppBar(context.loc.transactionsByCategory),
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
                  final Future<AccountEntity?> accountFuture = context
                      .read<HomeCubit>()
                      .fetchAccountFromId(expenses[index].accountId);
                  final Future<CategoryEntity?> categoryFuture = context
                      .read<HomeCubit>()
                      .fetchCategoryFromId(expenses[index].categoryId);
                  return FutureBuilder<AccountEntity?>(
                    future: accountFuture,
                    builder: (BuildContext context,
                        AsyncSnapshot<AccountEntity?> accountSnapshot) {
                      if (accountSnapshot.connectionState ==
                          ConnectionState.waiting) {
                        return const CircularProgressIndicator();
                      } else if (accountSnapshot.hasError) {
                        return Text('Error: ${accountSnapshot.error}');
                      } else {
                        return FutureBuilder<CategoryEntity?>(
                          future: categoryFuture,
                          builder: (BuildContext context,
                              AsyncSnapshot<CategoryEntity?> categorySnapshot) {
                            if (categorySnapshot.connectionState ==
                                ConnectionState.waiting) {
                              return const CircularProgressIndicator();
                            } else if (categorySnapshot.hasError) {
                              return Text('Error: ${categorySnapshot.error}');
                            } else {
                              return ExpenseItemWidget(
                                expense: expenses[index],
                                account: accountSnapshot.data!,
                                category: categorySnapshot.data!,
                              );
                            }
                          },
                        );
                      }
                    },
                  );
                },
              ),
            );
          }
        },
      ),
    );
  }
}
