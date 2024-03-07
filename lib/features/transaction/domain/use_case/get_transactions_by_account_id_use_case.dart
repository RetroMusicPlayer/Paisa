import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:paisa/core/error/failures.dart';
import 'package:paisa/core/use_case/use_case.dart';
import 'package:paisa/features/transaction/domain/entities/transaction.dart';
import 'package:paisa/features/transaction/domain/repository/transaction_repository.dart';

@singleton
class GetTransactionsByAccountIdUseCase
    implements UseCase<List<TransactionEntity>, ParamsAccountId> {
  GetTransactionsByAccountIdUseCase({required this.expenseRepository});

  final TransactionRepository expenseRepository;

  @override
  Future<Either<Failure, List<TransactionEntity>>> call(
      ParamsAccountId params) {
    return expenseRepository.fetchByAccountId(params.accountId);
  }
}

class ParamsAccountId {
  ParamsAccountId(this.accountId);

  final int accountId;
}
