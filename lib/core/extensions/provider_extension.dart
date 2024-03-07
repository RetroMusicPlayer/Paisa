import 'package:flutter/material.dart';
import 'package:paisa/features/account/domain/entities/account_entity.dart';
import 'package:paisa/features/category/domain/entities/category.dart';
import 'package:paisa/features/transaction/domain/entities/transaction.dart';
import 'package:provider/provider.dart';

extension ProviderHelper on BuildContext {
  CategoryEntity? findCategory(int categoryId) {
    return Provider.of<Map<int, CategoryEntity>>(this,
        listen: false)[categoryId];
  }

  List<TransactionEntity> findCategories(int categoryId) {
    return Provider.of<List<TransactionEntity>>(this, listen: false)
        .where((element) => element.categoryId == categoryId)
        .toList();
  }

  AccountEntity? findAccount(int accountId) {
    return Provider.of<Map<int, AccountEntity>>(this, listen: false)[accountId];
  }

  List<TransactionEntity> findAccounts(int accountId) {
    return Provider.of<List<TransactionEntity>>(this, listen: false)
        .where((element) => element.accountId == accountId)
        .toList();
  }

  TransactionEntity? findTransaction(int transactionId) {
    return Provider.of<Map<int, TransactionEntity>>(this,
        listen: false)[transactionId];
  }
}
