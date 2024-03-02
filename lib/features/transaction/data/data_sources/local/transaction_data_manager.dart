// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:collection/collection.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:paisa/core/common.dart';
import 'package:paisa/features/transaction/data/model/search_query.dart';
import 'package:paisa/features/transaction/data/model/transaction_model.dart';

abstract class TransactionDataSource {
  Future<int> add(TransactionModel transaction);

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

@Injectable(as: TransactionDataSource)
class LocalTransactionManagerImpl implements TransactionDataSource {
  LocalTransactionManagerImpl(this.transactionBox);

  final Box<TransactionModel> transactionBox;

  @override
  Future<int> add(TransactionModel transaction) async {
    final id = await transactionBox.add(transaction);
    transaction.superId = id;
    transaction.save();

    return id;
  }

  @override
  Future<void> clear() => transactionBox.clear();

  @override
  Future<void> deleteByAccountId(int accountId) {
    final keys = transactionBox.values
        .where((element) => element.accountId == accountId)
        .map((e) => e.key);

    return transactionBox.deleteAll(keys);
  }

  @override
  Future<void> deleteByCategoryId(int categoryId) {
    final keys = transactionBox.values
        .where((element) => element.categoryId == categoryId)
        .map((e) => e.key);

    return transactionBox.deleteAll(keys);
  }

  @override
  Future<void> deleteById(int key) {
    return transactionBox.delete(key);
  }

  @override
  List<TransactionModel> expenses() => transactionBox.values.toList();

  @override
  Iterable<TransactionModel> export() => transactionBox.values;

  @override
  List<TransactionModel> filterExpenses(SearchQuery query) {
    return transactionBox.search(query).toList();
  }

  @override
  Future<List<TransactionModel>> filteredExpenses(
    DateTimeRange dateTimeRange,
  ) async {
    final List<TransactionModel> expenses =
        transactionBox.values.sortedBy<DateTime>((element) => element.time);
    final filteredExpenses = expenses.takeWhile((value) {
      return value.time.isAfter(dateTimeRange.start) &&
          value.time.isBefore(dateTimeRange.end);
    }).toList();

    return filteredExpenses;
  }

  @override
  List<TransactionModel> findByAccountId(int accountId) => transactionBox.values
      .where((element) => element.accountId != -1 && element.categoryId != -1)
      .where((element) => element.accountId == accountId)
      .toList();

  @override
  List<TransactionModel> findByCategoryId(int category) => transactionBox.values
      .where((element) => element.accountId != -1 && element.categoryId != -1)
      .where((element) => element.categoryId == category)
      .toList();

  @override
  TransactionModel? findById(int expenseId) => transactionBox.values
      .firstWhereOrNull((element) => element.key == expenseId);

  @override
  Future<void> update(TransactionModel expenseModel) {
    return transactionBox.put(expenseModel.superId!, expenseModel);
  }
}
