import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:paisa/core/common.dart';
import 'package:paisa/features/transaction/data/data_sources/local_transaction_data_manager.dart';
import 'package:paisa/features/transaction/data/model/expense_model.dart';
import 'package:paisa/features/transaction/data/model/search_query.dart';

@Injectable(as: ExpenseLocalDataManager)
class LocalExpenseDataManagerImpl implements ExpenseLocalDataManager {
  LocalExpenseDataManagerImpl(this.expenseBox);

  final Box<TransactionModel> expenseBox;

  @override
  Future<void> add(TransactionModel expense) async {
    final id = await expenseBox.add(expense);
    expense.superId = id;
    return expense.save();
  }

  @override
  Future<void> clear() => expenseBox.clear();

  @override
  Future<void> deleteById(int key) {
    return expenseBox.delete(key);
  }

  @override
  Future<void> deleteByAccountId(int accountId) {
    final keys = expenseBox.values
        .where((element) => element.accountId == accountId)
        .map((e) => e.key);
    return expenseBox.deleteAll(keys);
  }

  @override
  Future<void> deleteByCategoryId(int categoryId) {
    final keys = expenseBox.values
        .where((element) => element.categoryId == categoryId)
        .map((e) => e.key);
    return expenseBox.deleteAll(keys);
  }

  @override
  List<TransactionModel> expenses() => expenseBox.values.toList();

  @override
  Iterable<TransactionModel> export() => expenseBox.values;

  @override
  TransactionModel? findById(int expenseId) =>
      expenseBox.values.firstWhereOrNull((element) => element.key == expenseId);

  @override
  List<TransactionModel> findByAccountId(int accountId) => expenseBox.values
      .where((element) => element.accountId != -1 && element.categoryId != -1)
      .where((element) => element.accountId == accountId)
      .toList();

  @override
  List<TransactionModel> findByCategoryId(int category) => expenseBox.values
      .where((element) => element.accountId != -1 && element.categoryId != -1)
      .where((element) => element.categoryId == category)
      .toList();

  @override
  List<TransactionModel> filterExpenses(SearchQuery query) {
    return expenseBox.search(query);
  }

  @override
  Future<List<TransactionModel>> filteredExpenses(
      DateTimeRange dateTimeRange) async {
    final List<TransactionModel> expenses = expenseBox.values.toList();
    expenses.sort((a, b) => b.time.compareTo(a.time));
    final filteredExpenses = expenses.takeWhile((value) {
      return value.time.isAfter(dateTimeRange.start) &&
          value.time.isBefore(dateTimeRange.end);
    }).toList();
    return filteredExpenses;
  }

  @override
  Future<void> update(TransactionModel expenseModel) {
    return expenseBox.put(expenseModel.superId!, expenseModel);
  }
}
