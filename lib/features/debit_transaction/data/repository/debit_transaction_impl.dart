import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:paisa/core/common.dart';
import 'package:paisa/core/data/data_manager.dart';
import 'package:paisa/core/error/exceptions.dart';
import 'package:paisa/core/error/failures.dart';
import 'package:paisa/features/debit_transaction/data/data_source/transaction_data_manager.dart';
import 'package:paisa/features/debit_transaction/data/model/debit_transactions_model.dart';
import 'package:paisa/features/debit_transaction/domain/entity/debit_transaction_entity.dart';
import 'package:paisa/features/debit_transaction/domain/repository/debit_transaction_repository.dart';

@Singleton(as: DebitTransactionRepository)
class DebitTransactionRepositoryImpl extends DebitTransactionRepository {
  DebitTransactionRepositoryImpl(
    this.transactionDataManager,
    this.dataManager,
  );

  final DataManager<DebitTransactionsModel> dataManager;
  final TransactionDataManager transactionDataManager;

  @override
  Future<Either<Failure, int>> add(
    double amount,
    DateTime currentDateTime,
    int parentId,
  ) async {
    try {
      final int id = await dataManager.add(
        DebitTransactionsModel(
          amount: amount,
          now: currentDateTime,
          parentId: parentId,
        ),
      );
      return right(id);
    } on ItemNotAbleToAddException {
      return left(const Failure.itemNotAbleToAdd());
    }
  }

  @override
  Future<Either<Failure, void>> deleteById(int id) async {
    try {
      return right(await dataManager.deleteById(id));
    } on NotAbleToDeleteException {
      return left(const Failure.notAbleToDelete());
    }
  }

  @override
  Future<Either<Failure, void>> deleteTransactionsById(int parentId) async {
    try {
      return right(await transactionDataManager.deleteAllByParentId(parentId));
    } on NotAbleToDeleteException {
      return left(const Failure.notAbleToDelete());
    }
  }

  @override
  Future<Either<Failure, List<DebitTransactionEntity>>> fetchByParentId(
      int id) async {
    try {
      final Iterable<DebitTransactionsModel> result =
          transactionDataManager.findById(id);
      if (result.isEmpty) {
        return left(const Failure.itemNotFound());
      } else {
        return right(result.toEntities());
      }
    } on ItemNotFoundException {
      return left(const Failure.itemNotFound());
    }
  }
}
