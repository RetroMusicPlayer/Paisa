// Package imports:
import 'package:dartz/dartz.dart';

// Project imports:
import 'package:paisa/core/enum/transaction_type.dart';
import 'package:paisa/core/error/failures.dart';
import 'package:paisa/features/transaction/domain/entities/transaction_entity.dart';

abstract class TransactionRepository {
  Future<Either<Failure, bool>> addExpense({
    required double amount,
    required int categoryId,
    required int accountId,
    required DateTime time,
    required String name,
    TransactionType transactionType = TransactionType.expense,
    String? description,
  });

  Future<Either<Failure, List<TransactionEntity>>>
      getTransactionsByAccountIdAndMonth(
    int accountId,
    DateTime month,
  );

  Future<List<TransactionEntity>> fetchExpensesFromCategoryId(int categoryId);

  Future<List<TransactionEntity>> getRecentTransactions(int limit);

  Future<void> clearExpense(int expenseId);

  Future<TransactionEntity?> fetchExpenseFromId(int expenseId);

  Future<List<TransactionEntity>> transactions({int? accountId});

  Future<List<TransactionEntity>> fetchExpensesFromAccountId(int accountId);

  Future<void> deleteExpensesByAccountId(int accountId);

  Future<void> deleteExpensesByCategoryId(int categoryId);

  Future<void> updateExpense({
    required int key,
    required double amount,
    required int categoryId,
    required int accountId,
    required DateTime time,
    required String name,
    TransactionType transactionType = TransactionType.expense,
    String? description,
  });

  Future<void> clearAll();

  Future<List<TransactionEntity>> filterExpenses(
    String query,
    List<int> accounts,
    List<int> categories,
  );
}
