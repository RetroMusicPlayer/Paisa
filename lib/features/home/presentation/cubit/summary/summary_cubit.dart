import 'package:event_bus_plus/event_bus_plus.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:paisa/core/use_case/use_case.dart';
import 'package:paisa/features/account/domain/entities/account_entity.dart';
import 'package:paisa/features/account/domain/use_case/account_use_case.dart';
import 'package:paisa/features/transaction/domain/entities/transaction.dart';
import 'package:paisa/features/transaction/domain/use_case/transaction_use_case.dart';
part 'summary_cubit.freezed.dart';

@injectable
class SummaryCubit extends Cubit<SummaryState> {
  SummaryCubit(
    this._eventBus,
    this._getTransactionsUseCase,
    this._getAccountsUseCase,
  ) : super(const _SummaryInitial()) {
    _eventBus.on<RefreshSummaryEvent>().listen((event) {
      fetchAccounts();
    });
  }
  final GetTransactionsUseCase _getTransactionsUseCase;
  final GetAccountsUseCase _getAccountsUseCase;
  final EventBus _eventBus;
  final List<AccountEntity> accounts = [];

  void fetchAccounts({AccountEntity? accountEntity}) {
    if (accountEntity == null) {
      accounts.clear();
      accounts.addAll(_getAccountsUseCase(NoParams()));
    }
    if (accounts.isNotEmpty) {
      accountEntity = accountEntity ??
          accounts.firstWhere(
            (element) => element.isAccountDefault ?? false,
            orElse: () => accounts.first,
          );
      final List<TransactionEntity> transactions = _getTransactionsUseCase(
        ParamsDefaultAccountId(accountEntity.superId ?? -1),
      );
      emit(SummaryState.update(
        transactions: transactions,
        accountEntity: accountEntity,
        accounts: accounts,
      ));
    }
  }
}

@freezed
abstract class SummaryState with _$SummaryState {
  const factory SummaryState.initial() = _SummaryInitial;
  const factory SummaryState.update({
    required AccountEntity accountEntity,
    required List<TransactionEntity> transactions,
    required List<AccountEntity> accounts,
  }) = TransactionsSuccessState;
}

class RefreshSummaryEvent extends AppEvent {
  @override
  List<Object?> get props => [];
}
