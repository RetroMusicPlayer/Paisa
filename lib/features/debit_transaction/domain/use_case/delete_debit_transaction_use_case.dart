import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:paisa/core/error/failures.dart';
import 'package:paisa/core/use_case/use_case.dart';
import 'package:paisa/features/debit_transaction/domain/repository/debit_transaction_repository.dart';

@singleton
class DeleteDebitTransactionUseCase
    implements UseCase<void, DeleteDebitTransactionParams> {
  DeleteDebitTransactionUseCase({required this.debtRepository});

  final DebitTransactionRepository debtRepository;

  @override
  Future<Either<Failure, void>> call(DeleteDebitTransactionParams params) {
    return debtRepository.deleteById(
      params.debitTransactionId,
    );
  }
}

class DeleteDebitTransactionParams extends Equatable {
  const DeleteDebitTransactionParams(this.debitTransactionId);

  final int debitTransactionId;

  @override
  List<Object?> get props => [debitTransactionId];
}
