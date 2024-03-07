import 'package:dartz/dartz.dart';
import 'package:paisa/core/enum/transaction_type.dart';
import 'package:paisa/core/error/failures.dart';
import 'package:paisa/features/transaction/domain/entities/transaction.dart';

abstract class TransactionRepository {
  Future<Either<Failure, int>> add(
    String? name,
    double? amount,
    DateTime? time,
    int? category,
    int? account,
    TransactionType? transactionType,
    String? description,
  );

  Future<Either<Failure, void>> update(
    int key,
    String? name,
    double? currency,
    DateTime? time,
    int? categoryId,
    int? accountId,
    TransactionType? transactionType,
    String? description,
  );

  Future<Either<Failure, void>> delete(int expenseId);

  Future<Either<Failure, TransactionEntity>> fetchById(int expenseId);

  Future<Either<Failure, List<TransactionEntity>>> fetchByAccountId(
      int accountId);
  Future<Either<Failure, List<TransactionEntity>>> all();

  Future<Either<Failure, List<TransactionEntity>>> fetchByCategoryId(
      int accountId);

  Future<Either<Failure, void>> deleteByAccountId(int accountId);

  Future<Either<Failure, void>> deleteByCategoryId(int categoryId);

  Future<Either<Failure, void>> clear();

  Future<Either<Failure, List<TransactionEntity>>> filterExpenses(
    String query,
    List<int> accounts,
    List<int> categories,
  );
}
