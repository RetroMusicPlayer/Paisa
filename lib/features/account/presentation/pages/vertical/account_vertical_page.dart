import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:paisa/core/common.dart';
import 'package:paisa/features/account/domain/entities/account.dart';
import 'package:paisa/features/account/presentation/widgets/account_card_v2.dart';
import 'package:paisa/features/transaction/data/model/expense_model.dart';
import 'package:paisa/features/transaction/domain/entities/expense.dart';
import 'package:paisa/main.dart';
import 'package:responsive_builder/responsive_builder.dart';

class AccountMobileVerticalPage extends StatelessWidget {
  const AccountMobileVerticalPage({super.key, required this.accounts});

  final List<AccountEntity> accounts;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<Box<TransactionModel>>(
      valueListenable: getIt.get<Box<TransactionModel>>().listenable(),
      builder: (context, value, child) {
        return ScreenTypeLayout(
          mobile: ListView.builder(
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            padding: const EdgeInsets.only(bottom: 124),
            itemCount: accounts.length,
            itemBuilder: (context, index) {
              final List<Transaction> expenses = value
                  .expensesFromAccountId(accounts[index].superId!)
                  .map((e) => e.toEntity())
                  .toList();
              return AccountCardV2(
                account: accounts[index],
                expenses: expenses,
              );
            },
          ),
          tablet: GridView.builder(
            padding: const EdgeInsets.only(bottom: 124),
            shrinkWrap: true,
            itemCount: accounts.length,
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 450,
              childAspectRatio: 16 / 11,
            ),
            itemBuilder: (BuildContext context, int index) {
              final List<Transaction> expenses = value
                  .expensesFromAccountId(accounts[index].superId!)
                  .map((e) => e.toEntity())
                  .toList();
              return AccountCardV2(
                account: accounts[index],
                expenses: expenses,
              );
            },
          ),
        );
      },
    );
  }
}
