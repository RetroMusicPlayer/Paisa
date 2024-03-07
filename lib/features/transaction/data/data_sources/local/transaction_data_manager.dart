import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:paisa/core/common.dart';
import 'package:paisa/features/transaction/data/model/transaction_model.dart';
import 'package:paisa/features/transaction/data/model/search_query.dart';

abstract class LocalTransactionManager {
  Future<void> deleteByAccountId(int accountId);

  Future<void> deleteByCategoryId(int categoryId);

  List<TransactionModel> findByAccountId(int accountId);

  List<TransactionModel> findByCategoryId(int category);

  List<TransactionModel> filterExpenses(SearchQuery query);
}

@Injectable(as: LocalTransactionManager)
class LocalTransactionManagerImpl implements LocalTransactionManager {
  LocalTransactionManagerImpl(this.transactionBox);

  final Box<TransactionModel> transactionBox;

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
  List<TransactionModel> filterExpenses(SearchQuery query) {
    return transactionBox.search(query).toList();
  }
}
