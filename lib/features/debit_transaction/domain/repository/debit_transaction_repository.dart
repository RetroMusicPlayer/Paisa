import 'package:dartz/dartz.dart';
import 'package:paisa/core/error/failures.dart';
import 'package:paisa/features/debit_transaction/domain/entity/debit_transaction_entity.dart';

abstract class DebitTransactionRepository {
  Future<Either<Failure, void>> deleteTransactionsById(int parentId);

  Future<Either<Failure, void>> deleteById(int id);

  Future<Either<Failure, int>> add(
    double amount,
    DateTime currentDateTime,
    int parentId,
  );

  Future<Either<Failure, List<DebitTransactionEntity>>> fetchByParentId(int id);
}
