import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:paisa/core/error/failures.dart';
import 'package:paisa/core/use_case/use_case.dart';
import 'package:paisa/features/transaction/domain/repository/transaction_repository.dart';

@singleton
class DeleteTransactionsByCategoryIdUseCase
    implements UseCase<void, DeleteTransactionsByCategoryIdParams> {
  DeleteTransactionsByCategoryIdUseCase({
    required this.transactionRepository,
  });

  final TransactionRepository transactionRepository;

  @override
  Future<Either<Failure, void>> call(
      DeleteTransactionsByCategoryIdParams params) {
    return transactionRepository.delete(params.categoryId);
  }
}

class DeleteTransactionsByCategoryIdParams {
  DeleteTransactionsByCategoryIdParams(this.categoryId);

  final int categoryId;
}
