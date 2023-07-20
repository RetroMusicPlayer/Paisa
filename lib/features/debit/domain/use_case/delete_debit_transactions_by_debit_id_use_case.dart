import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:paisa/core/use_case/use_case.dart';

import '../repository/debit_repository.dart';

@singleton
class DeleteDebitTransactionsByDebitIdUseCase
    implements UseCase<void, DeleteDebitTransactionsbyDebitIdParams> {
  DeleteDebitTransactionsByDebitIdUseCase({required this.debtRepository});

  final DebtRepository debtRepository;

  @override
  Future<void> call({DeleteDebitTransactionsbyDebitIdParams? params}) {
    return debtRepository.deleteDebitTransactionsFromDebitId(
      params!.debitTransactionId,
    );
  }
}

class DeleteDebitTransactionsbyDebitIdParams extends Equatable {
  const DeleteDebitTransactionsbyDebitIdParams(this.debitTransactionId);

  final int debitTransactionId;

  @override
  List<Object?> get props => [debitTransactionId];
}
