// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:paisa/core/use_case/use_case.dart';
import 'package:paisa/features/transaction/domain/entities/transaction_entity.dart';
import 'package:paisa/features/transaction/domain/repository/transaction_repository.dart';

@lazySingleton
class GetTransactionUseCase
    implements UseCase<Future<TransactionEntity?>, GetTransactionParams> {
  GetTransactionUseCase({required this.transactionRepository});

  final TransactionRepository transactionRepository;
// why does double Future exist here?
  @override
  Future<Future<TransactionEntity?>> call(GetTransactionParams params) async =>
      transactionRepository.fetchExpenseFromId(params.transactionId);
}

class GetTransactionParams {
  GetTransactionParams(this.transactionId);

  final int transactionId;
}
