// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:paisa/core/use_case/use_case.dart';
import 'package:paisa/features/debit_transaction/domain/entities/debit_transaction_entity.dart';
import 'package:paisa/features/debit_transaction/domain/repository/debit_transaction_repository.dart';

part 'get_debit_transactions_use_case.freezed.dart';

@lazySingleton
class GetDebitTransactionsUseCase
    implements
        UseCase<List<DebitTransactionEntity>, GetDebitTransactionsParams> {
  GetDebitTransactionsUseCase({required this.debtRepository});

  final DebitTransactionRepository debtRepository;

  @override
  Future<List<DebitTransactionEntity>> call(GetDebitTransactionsParams param) {
    return debtRepository.fetchTransactionsFromId(param.debitId);
  }
}

@freezed
class GetDebitTransactionsParams with _$GetDebitTransactionsParams {
  const factory GetDebitTransactionsParams(int debitId) =
      _GetDebitTransactionsParams;
}
