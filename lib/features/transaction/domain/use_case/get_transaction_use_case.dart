import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:paisa/core/error/failures.dart';
import 'package:paisa/core/use_case/use_case.dart';
import 'package:paisa/features/transaction/domain/entities/transaction.dart';
import 'package:paisa/features/transaction/domain/repository/transaction_repository.dart';

@singleton
class GetTransactionUseCase
    implements UseCase<TransactionEntity, GetTransactionParams> {
  GetTransactionUseCase({required this.transactionRepository});

  final TransactionRepository transactionRepository;

  @override
  Future<Either<Failure, TransactionEntity>> call(GetTransactionParams params) {
    return transactionRepository.fetchById(params.transactionId);
  }
}

class GetTransactionParams {
  GetTransactionParams(this.transactionId);

  final int transactionId;
}
