import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:paisa/core/use_case/use_case.dart';

import '../repository/debit_repository.dart';

@singleton
class DeleteDebtUseCase implements UseCase<void, DeleteDebitParams> {
  DeleteDebtUseCase({required this.debtRepository});

  final DebtRepository debtRepository;

  @override
  Future<void> call({DeleteDebitParams? params}) {
    return debtRepository.deleteDebtOrCreditFromId(params!.debitId);
  }
}

class DeleteDebitParams extends Equatable {
  const DeleteDebitParams(this.debitId);

  final int debitId;

  @override
  List<Object?> get props => [debitId];
}
