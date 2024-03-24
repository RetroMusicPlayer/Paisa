import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:paisa/core/use_case/use_case.dart';
import 'package:paisa/features/transaction/domain/entities/transaction_entity.dart';
import 'package:paisa/features/transaction/domain/repository/transaction_repository.dart';

part 'get_transactions_by_account_id_and_month_use_case.freezed.dart';

@freezed
class GetTransactionsByAccountIdAndMonthParams
    with _$GetTransactionsByAccountIdAndMonthParams {
  const factory GetTransactionsByAccountIdAndMonthParams({
    required int accountId,
    required DateTime month,
  }) = _GetTransactionsByAccountIdAndMonthParams;
}

@lazySingleton
class GetTransactionsByAccountIdAndMonthUseCase
    implements
        UseCase<List<TransactionEntity>,
            GetTransactionsByAccountIdAndMonthParams> {
  final TransactionRepository transactionRepository;

  GetTransactionsByAccountIdAndMonthUseCase(this.transactionRepository);

  @override
  Future<List<TransactionEntity>> call(
      GetTransactionsByAccountIdAndMonthParams params) async {
    final result = await transactionRepository
        .getTransactionsByAccountIdAndMonth(params.accountId, params.month);
    return result.fold((failure) => [], (transactions) => transactions);
  }
}
