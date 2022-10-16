import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../../common/widgets/paisa_card.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../common/constants/currency.dart';
import '../../../common/constants/extensions.dart';
import '../../../data/accounts/data_sources/account_local_data_source.dart';
import '../../../data/accounts/model/account.dart';
import '../../../data/expense/model/expense.dart';
import '../../../di/service_locator.dart';
import '../../summary/widgets/expense_item_widget.dart';

class AccountTransactionWidget extends StatelessWidget {
  const AccountTransactionWidget({
    Key? key,
    required this.account,
  }) : super(key: key);

  final Account account;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<Box<Expense>>(
      valueListenable: locator.get<Box<Expense>>().listenable(),
      builder: (context, value, child) {
        final expenses = value.allAccount(account.superId!);
        expenses.sort((a, b) => b.time.compareTo(a.time));

        if (expenses.isEmpty) {
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: Column(
                children: [
                  const Icon(Icons.money_off_rounded, size: 72),
                  Text(AppLocalizations.of(context)!.emptyExpensesMessage),
                ],
              ),
            ),
          );
        }

        return ScreenTypeLayout(
          mobile: ListView(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  children: [
                    Expanded(
                      child: PaisaCard(
                        color: Theme.of(context).colorScheme.secondaryContainer,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                AppLocalizations.of(context)!.balanceLabel,
                                style: TextStyle(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onSecondaryContainer
                                      .withOpacity(0.75),
                                ),
                              ),
                              const SizedBox(height: 6),
                              Text(
                                expenses.balance,
                                style: GoogleFonts.manrope(
                                  textStyle: Theme.of(context)
                                      .textTheme
                                      .headline6
                                      ?.copyWith(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: PaisaCard(
                        color: Theme.of(context).colorScheme.secondaryContainer,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                AppLocalizations.of(context)!.expenseLabel,
                                style: TextStyle(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onSecondaryContainer
                                      .withOpacity(0.75),
                                ),
                              ),
                              const SizedBox(height: 6),
                              Text(
                                formattedCurrency(expenses.totalExpense),
                                style: GoogleFonts.manrope(
                                  textStyle: Theme.of(context)
                                      .textTheme
                                      .headline6
                                      ?.copyWith(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                title: Text(
                  AppLocalizations.of(context)!.transactionHistoryLabel,
                  style: Theme.of(context)
                      .textTheme
                      .headline6
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: PaisaCard(
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: expenses.length,
                    itemBuilder: (_, index) {
                      return ExpenseItemWidget(
                        expense: expenses[index],
                        account: locator
                            .get<AccountLocalDataSource>()
                            .fetchAccount(expenses[index].accountId),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
          tablet: Column(
            children: [
              ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                title: Text(
                  AppLocalizations.of(context)!.transactionHistoryLabel,
                  style: Theme.of(context)
                      .textTheme
                      .headline6
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: PaisaCard(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: expenses.length,
                    itemBuilder: (_, index) {
                      final account = locator
                          .get<AccountLocalDataSource>()
                          .fetchAccount(expenses[index].accountId);
                      return ExpenseItemWidget(
                        expense: expenses[index],
                        account: account,
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
