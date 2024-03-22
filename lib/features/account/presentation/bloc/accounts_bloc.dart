// Dart imports:
import 'dart:async';

// Flutter imports:

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:paisa/core/enum/card_type.dart';
import 'package:paisa/core/error/account_error.dart';
import 'package:paisa/features/account/domain/entities/account_entity.dart';
import 'package:paisa/features/account/domain/use_case/account_use_case.dart';
import 'package:paisa/features/category/domain/use_case/get_category_use_case.dart';
import 'package:paisa/features/intro/domain/entities/country_entity.dart';
import 'package:paisa/features/transaction/domain/entities/transaction_entity.dart';
import 'package:paisa/features/transaction/domain/use_case/transaction_use_case.dart';

part 'accounts_bloc.freezed.dart';
part 'accounts_event.dart';
part 'accounts_state.dart';

@injectable
class AccountBloc extends Bloc<AccountsEvent, AccountState> {
  AccountBloc({
    required this.getAccountUseCase,
    required this.deleteAccountUseCase,
    required this.getTransactionsByAccountIdUseCase,
    required this.addAccountUseCase,
    required this.getCategoryUseCase,
    required this.deleteExpensesFromAccountIdUseCase,
    required this.updateAccountUseCase,
  }) : super(const AccountState.idle()) {
    on<AccountsEvent>((event, emit) {});
    on<AddOrUpdateAccountEvent>(_addAccount);
    on<DeleteAccountEvent>(_deleteAccount);
    on<UpdateCardTypeEvent>(_updateCardType);
    on<FetchAccountFromIdEvent>(_fetchAccountFromId);
    on<AccountColorSelectedEvent>(_updateAccountColor);
    on<FetchAccountAndExpenseFromIdEvent>(_fetchAccountAndExpensesFromId);
  }

  String? accountHolderName;
  String? accountName;
  final AddAccountUseCase addAccountUseCase;
  AccountEntity? currentAccount;
  final DeleteAccountUseCase deleteAccountUseCase;
  final DeleteTransactionsByAccountIdUseCase deleteExpensesFromAccountIdUseCase;
  final GetAccountUseCase getAccountUseCase;
  final GetCategoryUseCase getCategoryUseCase;
  final GetTransactionsByAccountIdUseCase getTransactionsByAccountIdUseCase;
  double? initialAmount;
  int? selectedColor;
  bool isAccountDefault = false;
  bool isAccountExcluded = false;
  CardType selectedType = CardType.cash;
  final UpdateAccountUseCase updateAccountUseCase;

  Future<void> _fetchAccountFromId(
    FetchAccountFromIdEvent event,
    Emitter<AccountState> emit,
  ) async {
    final int accountId = event.accountId;
    final AccountEntity? accountEntity =
        getAccountUseCase(GetAccountParams(accountId));
    if (accountEntity != null) {
      accountName = accountEntity.bankName;
      accountHolderName = accountEntity.name;
      selectedType = accountEntity.cardType;
      initialAmount = accountEntity.amount;
      currentAccount = accountEntity;
      selectedColor = accountEntity.color;
      emit(AccountState.accountState(accountEntity));
      emit(AccountState.updateCardType(selectedType));
    } else {
      emit(const AccountState.errorAccountState(
        AccountErrors.accountNotFound(),
      ));
    }
  }

  Future<void> _addAccount(
    AddOrUpdateAccountEvent event,
    Emitter<AccountState> emit,
  ) async {
    final String? bankName = accountName;
    final String? holderName = accountHolderName;
    final CardType cardType = selectedType;
    final double? amount = initialAmount;
    final int? color = selectedColor;
    if (bankName == null) {
      return emit(const AccountState.errorAccountState(
        AccountErrors.bankName(),
      ));
    }
    if (holderName == null) {
      return emit(const AccountState.errorAccountState(
        AccountErrors.holderName(),
      ));
    }
    if (color == null) {
      return emit(const AccountState.errorAccountState(
        AccountErrors.color(),
      ));
    }

    if (event.addOrUpdate) {
      await addAccountUseCase(AddAccountParams(
        bankName: bankName,
        holderName: holderName,
        cardType: cardType,
        amount: amount ?? 0,
        color: color,
      ));
    } else {
      if (currentAccount == null) return;
      await updateAccountUseCase(UpdateAccountParams(
        key: currentAccount!.superId!,
        bankName: bankName,
        holderName: holderName,
        cardType: cardType,
        amount: amount ?? 0,
        color: color,
      ));
    }
    emit(AccountState.addAccountState(event.addOrUpdate));
  }

  FutureOr<void> _deleteAccount(
    DeleteAccountEvent event,
    Emitter<AccountState> emit,
  ) async {
    final int accountId = event.accountId;
    await deleteExpensesFromAccountIdUseCase(
      DeleteTransactionsFromAccountIdParams(accountId),
    );
    await deleteAccountUseCase(DeleteAccountParams(accountId));
    emit(const AccountState.deleteAccountState());
  }

  FutureOr<void> _updateCardType(
    UpdateCardTypeEvent event,
    Emitter<AccountState> emit,
  ) async {
    selectedType = event.cardType;
    emit(AccountState.updateCardType(event.cardType));
  }

  FutureOr<void> _updateAccountColor(
    AccountColorSelectedEvent event,
    Emitter<AccountState> emit,
  ) {
    selectedColor = event.color;
    emit(AccountState.colorSelected(event.color));
  }

  FutureOr<void> _fetchAccountAndExpensesFromId(
    FetchAccountAndExpenseFromIdEvent event,
    Emitter<AccountState> emit,
  ) async {
    final int accountId = event.accountId;
    final AccountEntity? account = getAccountUseCase(
      GetAccountParams(accountId),
    );
    final List<TransactionEntity> expenses = getTransactionsByAccountIdUseCase(
      GetTransactionsByAccountIdParams(accountId),
    );
    if (account != null) {
      emit(AccountState.selectedAccount(account, expenses));
    }
  }
}
