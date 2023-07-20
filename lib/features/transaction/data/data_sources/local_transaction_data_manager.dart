import 'package:flutter/material.dart';
import 'package:paisa/features/transaction/data/model/search_query.dart';

import '../model/expense_model.dart';

abstract class ExpenseLocalDataManager {
  Future<void> add(TransactionModel expense);

  Future<List<TransactionModel>> filteredExpenses(DateTimeRange dateTimeRange);

  Future<void> deleteById(int key);

  TransactionModel? findById(int expenseId);

  Iterable<TransactionModel> export();

  List<TransactionModel> expenses();

  Future<void> deleteByAccountId(int accountId);

  Future<void> deleteByCategoryId(int categoryId);

  List<TransactionModel> findByAccountId(int accountId);

  List<TransactionModel> findByCategoryId(int category);

  Future<void> update(TransactionModel expenseModel);

  Future<void> clear();

  List<TransactionModel> filterExpenses(SearchQuery query);
}
