import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:paisa/core/error/failures.dart';
import 'package:paisa/core/use_case/use_case.dart';
import 'package:paisa/features/transaction/domain/repository/transaction_repository.dart';

@singleton
class DeleteTransactionsByAccountIdUseCase
    implements UseCase<void, ParamsDeleteTransactionsFromAccountId> {
  DeleteTransactionsByAccountIdUseCase({required this.expenseRepository});

  final TransactionRepository expenseRepository;

  @override
  Future<Either<Failure, void>> call(
      ParamsDeleteTransactionsFromAccountId params) {
    return expenseRepository.deleteByAccountId(params.accountId);
  }
}

class ParamsDeleteTransactionsFromAccountId {
  ParamsDeleteTransactionsFromAccountId(this.accountId);

  final int accountId;
}
