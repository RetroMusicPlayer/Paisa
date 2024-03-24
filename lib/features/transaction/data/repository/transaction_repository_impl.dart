// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:paisa/core/common.dart';
import 'package:paisa/core/common_enum.dart';
import 'package:paisa/core/error/failures.dart';
import 'package:paisa/features/transaction/data/data_sources/local/transaction_data_manager.dart';
import 'package:paisa/features/transaction/data/model/search_query.dart';
import 'package:paisa/features/transaction/data/model/transaction_model.dart';
import 'package:paisa/features/transaction/domain/entities/transaction_entity.dart';
import 'package:paisa/features/transaction/domain/repository/transaction_repository.dart';

@LazySingleton(as: TransactionRepository)
class ExpenseRepositoryImpl extends TransactionRepository {
  ExpenseRepositoryImpl({
    required this.dataSource,
  });

  final TransactionDataSource dataSource;

  @override
  Future<Either<Failure, bool>> addExpense({
    required double amount,
    required int categoryId,
    required int accountId,
    required DateTime time,
    required String name,
    TransactionType transactionType = TransactionType.expense,
    String? description,
  }) async {
    try {
      final int result = await dataSource.add(
        TransactionModel(
          name: name,
          currency: amount,
          time: time,
          categoryId: categoryId,
          accountId: accountId,
          type: transactionType,
          description: description,
        ),
      );
      return result != -1 ? right(true) : right(false);
    } catch (err) {
      debugPrint(err.toString());
      return left(FailedToAddTransactionFailure());
    }
  }

  @override
  Future<void> clearAll() => dataSource.clear();

  @override
  Future<void> clearExpense(int expenseId) async {
    return dataSource.deleteById(expenseId);
  }

  @override
  Future<void> deleteExpensesByAccountId(int accountId) {
    return dataSource.deleteByAccountId(accountId);
  }

  @override
  Future<void> deleteExpensesByCategoryId(int categoryId) {
    return dataSource.deleteByCategoryId(categoryId);
  }

  @override
  Future<List<TransactionEntity>> transactions({int? accountId}) async =>
      dataSource.expenses().toEntities();

  @override
  Future<TransactionEntity?> fetchExpenseFromId(int expenseId) async {
    return dataSource.findById(expenseId)?.toEntity();
  }

  @override
  Future<List<TransactionEntity>> fetchExpensesFromAccountId(
      int accountId) async {
    return dataSource.findByAccountId(accountId).toEntities();
  }

// having override throws error???
  Future<List<TransactionEntity>> fetchExpensesFromCategoryId(
      int accountId) async {
    return dataSource.findByCategoryId(accountId).toEntities();
  }

  @override
  Future<List<TransactionEntity>> filterExpenses(
    String query,
    List<int> accounts,
    List<int> categories,
  ) async {
    return dataSource
        .filterExpenses(SearchQuery(
          query: query,
          accounts: accounts,
          categories: categories,
        ))
        .toEntities();
  }

  @override
  Future<void> updateExpense({
    required int key,
    required double amount,
    required int categoryId,
    required int accountId,
    required DateTime time,
    required String name,
    TransactionType transactionType = TransactionType.expense,
    String? description,
  }) {
    return dataSource.update(
      TransactionModel(
        name: name,
        currency: amount,
        time: time,
        categoryId: categoryId,
        accountId: accountId,
        type: transactionType,
        description: description,
        superId: key,
      ),
    );
  }

  @override
  Future<List<TransactionEntity>> getRecentTransactions(int limit) async {
    try {
      // Fetch all transactions from the data source
      final transactions = await dataSource.getRecentTransactions(limit);

      // Sort the transactions by date in descending order
      transactions.sort((a, b) => b.time.compareTo(a.time));

      // Take the most recent transactions up to the limit
      final recentTransactions = transactions.take(limit).toList();

      return recentTransactions
          .map((transaction) => transaction.toEntity())
          .toList();
    } catch (e) {
      // Handle any exceptions that occur during the fetch operation
      throw Exception('Failed to fetch recent transactions: $e');
    }
  }

  @override
  Future<Either<Failure, List<TransactionEntity>>>
      getTransactionsByAccountIdAndMonth(int accountId, DateTime month) async {
    try {
      // Fetch all transactions for the given account ID
      final List<TransactionModel> transactions =
          dataSource.findByAccountId(accountId);

      // Filter the transactions to only include those from the given month
      final List<TransactionModel> filteredTransactions =
          transactions.where((transaction) {
        final transactionDate = transaction.time;
        return transactionDate.year == month.year &&
            transactionDate.month == month.month;
      }).toList();

      // Convert the transaction models to entities
      final List<TransactionEntity> transactionEntities = filteredTransactions
          .map((transaction) => transaction.toEntity())
          .toList();

      // Return the transaction entities
      return right(transactionEntities);
    } catch (err) {
      // If an error occurs, return the failure
      debugPrint(err.toString());
      return left(FailedToFetchTransactionsFailure());
    }
  }
}

class FailedToFetchTransactionsFailure extends Failure {
  final String message;

  FailedToFetchTransactionsFailure(
      {this.message = 'Failed to fetch transactions.'});

  @override
  List<Object> get props => [message];
}
