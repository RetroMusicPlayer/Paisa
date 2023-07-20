import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:paisa/core/use_case/use_case.dart';

import '../repository/debit_repository.dart';

@singleton
class DeleteDebitTransactionUseCase
    implements UseCase<void, DeleteDebitTransactionParams> {
  DeleteDebitTransactionUseCase({required this.debtRepository});

  final DebtRepository debtRepository;

  @override
  Future<void> call({DeleteDebitTransactionParams? params}) {
    return debtRepository.deleteDebitTransactionFromDebitId(
      params!.debitTransactionId,
    );
  }
}

class DeleteDebitTransactionParams extends Equatable {
  const DeleteDebitTransactionParams(this.debitTransactionId);

  final int debitTransactionId;

  @override
  List<Object?> get props => [debitTransactionId];
}
