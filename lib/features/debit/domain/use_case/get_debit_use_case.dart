import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:paisa/core/common.dart';
import 'package:paisa/core/use_case/use_case.dart';

import '../entities/debit.dart';
import '../repository/debit_repository.dart';

@singleton
class GetDebtUseCase implements UseCase<Debit?, GetDebitParams> {
  GetDebtUseCase({required this.debtRepository});

  final DebtRepository debtRepository;

  @override
  Debit? call({GetDebitParams? params}) {
    return debtRepository.fetchDebtOrCreditFromId(params!.debitId)?.toEntity();
  }
}

class GetDebitParams extends Equatable {
  const GetDebitParams(this.debitId);

  final int debitId;

  @override
  List<Object?> get props => [debitId];
}
