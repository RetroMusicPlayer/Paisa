import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:paisa/config/routes_name.dart';
import 'package:paisa/core/common.dart';
import 'package:paisa/core/extensions/provider_extension.dart';
import 'package:paisa/core/widgets/paisa_widget.dart';
import 'package:paisa/features/account/presentation/bloc/accounts_bloc.dart';
import 'package:paisa/features/category/domain/entities/category.dart';
import 'package:paisa/features/home/presentation/controller/summary_controller.dart';
import 'package:paisa/features/transaction/domain/entities/transaction.dart';

class AccountTransactionsPage extends StatelessWidget {
  const AccountTransactionsPage({
    Key? key,
    required this.accountId,
    required this.summaryController,
  }) : super(key: key);

  final String accountId;
  final SummaryController summaryController;

  @override
  Widget build(BuildContext context) {
    final ScrollController scrollController = ScrollController();
    final int id = int.parse(accountId);
    BlocProvider.of<AccountBloc>(context)
        .add(FetchAccountAndExpenseFromIdEvent(id));
    return PaisaAnnotatedRegionWidget(
      color: context.background,
      child: Scaffold(
        appBar: context.materialYouAppBar(
          context.loc.transactionHistory,
          actions: [
            IconButton(
              tooltip: context.loc.edit,
              onPressed: () {
                context.pushNamed(
                  RoutesName.accountTransactionsEditAccount.name,
                  pathParameters: {'aid': accountId},
                );
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
                      if (state is AccountAndExpensesState) {
                        return RichText(
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
                        );
                      } else {
                        return const SizedBox.shrink();
                      }
                    },
                  ),
                  confirmationButton: TextButton(
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                    ),
                    onPressed: () {
                      int? id = int.tryParse(accountId);
                      if (id != null) {
                        BlocProvider.of<AccountBloc>(context)
                            .add(DeleteAccountEvent(id));
                      }
                      Navigator.pop(context);
                    },
                    child: Text(
                      context.loc.delete,
                    ),
                  ),
                );
              },
              icon: const Icon(Icons.delete_rounded),
            )
          ],
        ),
        body: BlocConsumer<AccountBloc, AccountState>(
          listener: (context, state) {
            if (state is AccountDeletedState) {
              context.pop();
            }
          },
          builder: (context, state) {
            if (state is AccountAndExpensesState) {
              if (state.expenses.isEmpty) {
                return EmptyWidget(
                  icon: Icons.credit_card,
                  title: context.loc.noTransaction,
                  description: context.loc.emptyAccountMessageSubTitle,
                );
              } else {
                return Scrollbar(
                  controller: scrollController,
                  child: ListView.builder(
                    controller: scrollController,
                    shrinkWrap: true,
                    itemCount: state.expenses.length,
                    itemBuilder: (context, index) {
                      final TransactionEntity expense = state.expenses[index];
                      final CategoryEntity? category =
                          context.findCategory(expense.categoryId!);
                      if (category == null) {
                        return const SizedBox.shrink();
                      } else {
                        return const SizedBox.shrink();
                        /*  return ExpenseItemWidget(
                          transaction: expense,
                          account: state.account,
                          category: category,
                        ); */
                      }
                    },
                  ),
                );
              }
            } else {
              return const SizedBox.shrink();
            }
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
                    context.pushNamed(
                      RoutesName.accountAddTransaction.name,
                      queryParameters: {
                        'type': '0',
                        'aid': accountId,
                      },
                      pathParameters: {
                        'aid': accountId,
                      },
                    );
                  },
                  title: context.loc.income,
                  iconData: Icons.add_rounded,
                ),
                const SizedBox(
                  width: 8,
                ),
                PaisaIconButton(
                  onPressed: () {
                    context.pushNamed(
                      RoutesName.accountAddTransaction.name,
                      pathParameters: {
                        'aid': accountId,
                      },
                      queryParameters: {
                        'type': '1',
                        'aid': accountId,
                      },
                    );
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
