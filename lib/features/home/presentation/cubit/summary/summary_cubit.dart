import 'package:event_bus_plus/event_bus_plus.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:injectable/injectable.dart';
import 'package:paisa/core/error/failures.dart';
import 'package:paisa/core/use_case/use_case.dart';
import 'package:paisa/features/account/data/model/account_model.dart';
import 'package:paisa/features/account/domain/entities/account_entity.dart';
import 'package:paisa/features/account/domain/use_case/account_use_case.dart';
import 'package:paisa/features/transaction/domain/entities/transaction.dart';
import 'package:paisa/features/transaction/domain/use_case/transaction_use_case.dart';
part 'summary_cubit.freezed.dart';

@injectable
class SummaryCubit extends Cubit<SummaryState> {
  SummaryCubit(
    this._getTransactionsByAccountIdUseCase,
    this._getAccountsUseCase,
    this.accountBox,
  ) : super(const _SummaryInitial());

  final Box<AccountModel> accountBox;

  final GetAccountsUseCase _getAccountsUseCase;
  final GetTransactionsByAccountIdUseCase _getTransactionsByAccountIdUseCase;

  void fetchAccounts({AccountEntity? accountEntity}) {
    _getAccountsUseCase(NoParams()).then((accountsFold) {
      accountsFold.fold(
        (l) {
          emit(const SummaryState.update(
            transactions: [],
            accounts: [],
          ));
        },
        (accounts) {
          if (accounts.isNotEmpty) {
            accountEntity = accountEntity ??
                accounts.firstWhere(
                  (element) => element.isAccountDefault ?? false,
                  orElse: () => accounts.first,
                );
            _fetchTransactionsByAccount(accountEntity!);
          } else {
            emit(SummaryState.update(
              transactions: [],
              accountEntity: accountEntity!,
              accounts: [],
            ));
          }
        },
      );
    });
  }

  void _fetchTransactionsByAccount(
    AccountEntity accountEntity, {
    List<AccountEntity> accounts = const [],
  }) {
    _getTransactionsByAccountIdUseCase(
      ParamsAccountId(accountEntity.superId ?? -1),
    ).then((transactionsFold) {
      transactionsFold.fold((l) {
        if (l is EmptyItemsFailure) {
          emit(SummaryState.update(
            transactions: [],
            accountEntity: accountEntity,
            accounts: accounts,
          ));
        }
      }, (r) {
        emit(SummaryState.update(
          transactions: r,
          accountEntity: accountEntity,
          accounts: accounts,
        ));
      });
    });
  }
}

@freezed
abstract class SummaryState with _$SummaryState {
  const factory SummaryState.initial() = _SummaryInitial;

  const factory SummaryState.update({
    AccountEntity? accountEntity,
    required List<TransactionEntity> transactions,
    required List<AccountEntity> accounts,
  }) = TransactionsSuccessState;
}

class RefreshSummaryEvent extends AppEvent {
  @override
  List<Object?> get props => [];
}
