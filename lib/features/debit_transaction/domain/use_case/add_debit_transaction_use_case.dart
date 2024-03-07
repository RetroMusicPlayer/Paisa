import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:paisa/core/error/failures.dart';
import 'package:paisa/core/use_case/use_case.dart';
import 'package:paisa/features/debit_transaction/domain/repository/debit_transaction_repository.dart';

@singleton
class AddDebitTransactionUseCase
    implements UseCase<void, AddDebitTransactionParams> {
  AddDebitTransactionUseCase({required this.debtRepository});

  final DebitTransactionRepository debtRepository;

  @override
  Future<Either<Failure, void>> call(AddDebitTransactionParams params) {
    return debtRepository.add(
      params.amount,
      params.currentDateTime,
      params.parentId,
    );
  }
}

class AddDebitTransactionParams extends Equatable {
  const AddDebitTransactionParams(
    this.amount,
    this.currentDateTime,
    this.parentId,
  );

  final double amount;
  final DateTime currentDateTime;
  final int parentId;

  @override
  List<Object?> get props => [
        amount,
        currentDateTime,
        parentId,
      ];
}
