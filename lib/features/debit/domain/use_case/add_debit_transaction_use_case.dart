import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:paisa/core/use_case/use_case.dart';
import 'package:paisa/features/debit/domain/repository/debit_repository.dart';

@singleton
class AddTransactionUseCase
    implements UseCase<Future<void>, AddDebitTransactionParams> {
  AddTransactionUseCase({required this.debtRepository});

  final DebtRepository debtRepository;

  @override
  Future<void> call({AddDebitTransactionParams? params}) {
    return debtRepository.addTransaction(
      params!.amount,
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
