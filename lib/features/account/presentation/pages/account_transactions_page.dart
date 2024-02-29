// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

// Project imports:
import 'package:paisa/config/routes.dart';
import 'package:paisa/core/common.dart';
import 'package:paisa/core/enum/transaction_type.dart';
import 'package:paisa/core/widgets/paisa_widget.dart';
import 'package:paisa/features/account/presentation/bloc/accounts_bloc.dart';
import 'package:paisa/features/category/domain/entities/category.dart';
import 'package:paisa/features/home/presentation/controller/summary_controller.dart';
import 'package:paisa/features/home/presentation/pages/home/home_cubit.dart';
import 'package:paisa/features/home/presentation/pages/summary/widgets/expense_item_widget.dart';
import 'package:paisa/features/transaction/domain/entities/transaction_entity.dart';

class AccountTransactionsPage extends StatelessWidget {
  const AccountTransactionsPage({
    super.key,
    required this.accountId,
    required this.summaryController,
  });

  final int accountId;
  final SummaryController summaryController;

  @override
  Widget build(BuildContext context) {
    final ScrollController scrollController = ScrollController();
    BlocProvider.of<AccountBloc>(context)
        .add(FetchAccountAndExpenseFromIdEvent(accountId));

    return PaisaAnnotatedRegionWidget(
      color: context.background,
      child: Scaffold(
        appBar: context.materialYouAppBar(
          context.loc.transactionHistory,
          actions: [
            IconButton(
              tooltip: context.loc.edit,
              onPressed: () {
                AccountPageData(accountId: accountId).push(context);
              },
              icon: const Icon(Icons.edit_rounded),
            ),
            IconButton(
              tooltip: context.loc.delete,
              onPressed: () {
                paisaAlertDialog(
                  context,
                  title: Text(
                    context.loc.dialogDeleteTitle,
                  ),
                  child: BlocBuilder<AccountBloc, AccountState>(
                    builder: (context, state) {
                      return state is AccountAndExpensesState
                          ? RichText(
                              text: TextSpan(
                                text: context.loc.deleteAccount,
                                style: context.bodyMedium,
                                children: [
                                  TextSpan(
                                    text: state.account.name,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          : const SizedBox.shrink();
                    },
                  ),
                  confirmationButton: TextButton(
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                    ),
                    onPressed: () {
                      BlocProvider.of<AccountBloc>(context)
                          .add(DeleteAccountEvent(accountId));
                      Navigator.pop(context);
                    },
                    child: Text(
                      context.loc.delete,
                    ),
                  ),
                );
              },
              icon: const Icon(Icons.delete_rounded),
            ),
          ],
        ),
        body: BlocConsumer<AccountBloc, AccountState>(
          listener: (context, state) {
            if (state is AccountDeletedState) {
              context.pop();
            }
          },
          builder: (context, state) {
            return state is AccountAndExpensesState
                ? state.expenses.isEmpty
                    ? EmptyWidget(
                        icon: Icons.credit_card,
                        title: context.loc.noTransaction,
                        description: context.loc.emptyAccountMessageSubTitle,
                      )
                    : Scrollbar(
                        controller: scrollController,
                        child: ListView.builder(
                          controller: scrollController,
                          shrinkWrap: true,
                          itemCount: state.expenses.length,
                          itemBuilder: (context, index) {
                            final TransactionEntity? expense =
                                state.expenses.elementAtOrNull(index);
                            final CategoryEntity? category =
                                BlocProvider.of<HomeCubit>(context)
                                    .fetchCategoryFromId(expense!.categoryId);

                            return category == null
                                ? const SizedBox.shrink()
                                : ExpenseItemWidget(
                                    expense: expense,
                                    account: state.account,
                                    category: category,
                                  );
                          },
                        ),
                      )
                : const SizedBox.shrink();
          },
        ),
        bottomNavigationBar: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                PaisaIconButton(
                  onPressed: () {
                    TransactionPageData(
                      accountId: accountId,
                      transactionType: TransactionType.income,
                    ).push(context);
                  },
                  title: context.loc.income,
                  iconData: Icons.add_rounded,
                ),
                const SizedBox(
                  width: 8,
                ),
                PaisaIconButton(
                  onPressed: () {
                    TransactionPageData(
                      accountId: accountId,
                      transactionType: TransactionType.expense,
                    ).push(context);
                  },
                  title: context.loc.expense,
                  iconData: Icons.add_rounded,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
