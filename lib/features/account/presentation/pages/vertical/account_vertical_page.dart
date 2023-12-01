import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:paisa/core/common.dart';
import 'package:paisa/features/account/domain/entities/account_entity.dart';
import 'package:paisa/features/account/presentation/widgets/account_card_v2.dart';
import 'package:paisa/features/transaction/data/model/transaction_model.dart';
import 'package:paisa/features/transaction/domain/entities/transaction.dart';
import 'package:paisa/main.dart';
import 'package:responsive_builder/responsive_builder.dart';

class AccountMobileVerticalPage extends StatelessWidget {
  const AccountMobileVerticalPage({super.key, required this.accounts});

  final List<AccountEntity> accounts;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: ValueListenableBuilder<Box<TransactionModel>>(
          valueListenable: getIt.get<Box<TransactionModel>>().listenable(),
          builder: (context, value, child) {
            return ScreenTypeLayout.builder(
              mobile: (p0) => ListView.builder(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                padding: const EdgeInsets.only(bottom: 124),
                itemCount: accounts.length,
                itemBuilder: (context, index) {
                  final List<TransactionEntity> expenses = value
                      .expensesFromAccountId(accounts[index].superId!)
                      .map((e) => e.toEntity())
                      .toList();
                  return AccountCardV2(
                    account: accounts[index],
                    expenses: expenses,
                  );
                },
              ),
              tablet: (p0) => GridView.builder(
                padding: const EdgeInsets.only(bottom: 124),
                shrinkWrap: true,
                itemCount: accounts.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.4, // Adjust the aspect ratio as needed
                ),
                itemBuilder: (BuildContext context, int index) {
                  final List<TransactionEntity> expenses = value
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
        ),
      ),
    );
  }
}
