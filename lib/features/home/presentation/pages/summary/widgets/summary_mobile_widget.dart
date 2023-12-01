import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:paisa/core/common.dart';
import 'package:paisa/core/enum/card_type.dart';
import 'package:paisa/features/account/domain/entities/account_entity.dart';
import 'package:paisa/features/account/presentation/widgets/account_summary_widget.dart';
import 'package:paisa/features/home/presentation/cubit/summary/summary_cubit.dart';
import 'package:paisa/features/home/presentation/pages/summary/widgets/expense_history_widget.dart';
import 'package:paisa/features/home/presentation/pages/summary/widgets/expense_total_widget.dart';
import 'package:paisa/features/home/presentation/pages/summary/widgets/welcome_name_widget.dart';
import 'package:paisa/features/transaction/domain/entities/transaction.dart';

class SummaryMobileWidget extends StatelessWidget {
  const SummaryMobileWidget({
    super.key,
    required this.expenses,
  });

  final List<TransactionEntity> expenses;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      itemCount: 6,
      padding: const EdgeInsets.only(bottom: 124),
      itemBuilder: (context, index) {
        if (index == 0) {
          return const WelcomeNameWidget();
        } else if (index == 1) {
          return BlocBuilder<SummaryCubit, SummaryState>(
            builder: (context, state) {
              if (state is TransactionsSuccessState) {
                return AccountSelector(accounts: state.accounts);
              } else {
                return const SizedBox.shrink();
              }
            },
          );
        } else if (index == 2) {
          return ExpenseTotalWidget(expenses: expenses);
        } else if (index == 3) {
          return AccountSummaryWidget(expenses: expenses);
        } else if (index == 4) {
          return ListTile(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 0,
            ),
            title: Text(
              context.loc.transactions,
              style: context.titleMedium?.copyWith(
                color: context.onBackground,
                fontWeight: FontWeight.w600,
              ),
            ),
          );
        } else if (index == 5) {
          return ExpenseHistoryWidget(expenses: expenses);
        }
        return const SizedBox.shrink();
      },
    );
  }
}

class AccountSelector extends StatefulWidget {
  const AccountSelector({
    super.key,
    required this.accounts,
  });
  final List<AccountEntity> accounts;

  @override
  State<AccountSelector> createState() => _AccountSelectorState();
}

class _AccountSelectorState extends State<AccountSelector> {
  late AccountEntity accountEntity = widget.accounts.firstWhere(
    (element) => element.isAccountDefault ?? false,
    orElse: () => widget.accounts.first,
  );

  Future<AccountEntity?> showAccountPicker(BuildContext context) {
    return showDialog<AccountEntity>(
      context: context,
      builder: (_) {
        return AlertDialog(
          titleTextStyle: context.titleLarge,
          title: Text(context.loc.selectAccount),
          content: SizedBox(
            width: double.maxFinite,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: widget.accounts.length,
              itemBuilder: (_, index) {
                final AccountEntity accountEntity = widget.accounts[index];
                return ListTile(
                  onTap: () {
                    BlocProvider.of<SummaryCubit>(context).fetchAccounts(
                      accountEntity: accountEntity,
                    );
                    Navigator.pop(context, accountEntity);
                  },
                  contentPadding: EdgeInsets.zero,
                  horizontalTitleGap: 0,
                  title: Text(
                    ' ${accountEntity.name ?? ''} - ${accountEntity.bankName ?? ''}',
                    style: context.titleSmall,
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 8,
        right: 8,
        bottom: 6,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextButton.icon(
          onPressed: () async {
            final AccountEntity? account = await showAccountPicker(context);
            if (account != null) {
              setState(() {
                accountEntity = account;
              });
            }
          },
          icon: Icon(
            accountEntity.cardType == null
                ? CardType.bank.icon
                : accountEntity.cardType!.icon,
            color: context.onSecondaryContainer,
          ),
          label: Row(
            children: [
              Text(
                '${accountEntity.name ?? ''} - ${accountEntity.bankName ?? ''}',
                style: context.titleMedium?.copyWith(
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Icon(Icons.keyboard_arrow_down)
            ],
          ),
        ),
      ),
    );
  }
}
