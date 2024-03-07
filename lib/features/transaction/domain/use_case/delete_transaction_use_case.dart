import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:paisa/core/error/failures.dart';
import 'package:paisa/core/use_case/use_case.dart';
import 'package:paisa/features/transaction/domain/repository/transaction_repository.dart';

@singleton
class DeleteTransactionUseCase
    implements UseCase<void, DeleteTransactionParams> {
  DeleteTransactionUseCase({required this.expenseRepository});

  final TransactionRepository expenseRepository;

  @override
  Future<Either<Failure, void>> call(DeleteTransactionParams params) {
    return expenseRepository.delete(params.transactionId);
  }
}

class DeleteTransactionParams {
  DeleteTransactionParams(this.transactionId);

  final int transactionId;
}
