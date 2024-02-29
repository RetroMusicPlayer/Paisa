// Dart imports:
import 'dart:async';

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:paisa/core/enum/card_type.dart';
import 'package:paisa/features/account/domain/entities/account_entity.dart';
import 'package:paisa/features/account/domain/use_case/account_use_case.dart';
import 'package:paisa/features/category/domain/use_case/get_category_use_case.dart';
import 'package:paisa/features/transaction/domain/entities/transaction_entity.dart';
import 'package:paisa/features/transaction/domain/use_case/transaction_use_case.dart';

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
  }) : super(AccountsInitial()) {
    on<AccountsEvent>((event, emit) {});
    on<AddOrUpdateAccountEvent>(_addAccount);
    on<DeleteAccountEvent>(_deleteAccount);
    on<AccountSelectedEvent>(_accountSelected);
    on<UpdateCardTypeEvent>(_updateCardType);
    on<FetchAccountFromIdEvent>(_fetchAccountFromId);
    on<FetchExpensesFromAccountIdEvent>(_fetchExpensesFromAccountId);
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
  CardType selectedType = CardType.cash;
  final UpdateAccountUseCase updateAccountUseCase;

  Future<void> _fetchAccountFromId(
    FetchAccountFromIdEvent event,
    Emitter<AccountState> emit,
  ) async {
    final int? accountId = event.accountId;
    if (accountId == null) return;

    final AccountEntity? account =
        getAccountUseCase(GetAccountParams(accountId));
    if (account != null) {
      accountName = account.bankName;
      accountHolderName = account.name;
      selectedType = account.cardType ?? CardType.cash;
      initialAmount = account.amount;
      currentAccount = account;
      selectedColor = account.color ?? Colors.brown.shade100.value;
      emit(AccountSuccessState(account));
      emit(UpdateCardTypeState(selectedType));
    } else {
      emit(const AccountErrorState('Account not found!'));
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
      return emit(const AccountErrorState('Set bank name'));
    }
    if (holderName == null) {
      return emit(const AccountErrorState('Set account holder name'));
    }
    if (color == null) {
      return emit(const AccountErrorState('Set account color name'));
    }

    if (event.isAdding) {
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
    emit(AccountAddedState(isAddOrUpdate: event.isAdding));
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
    emit(AccountDeletedState());
  }

  FutureOr<void> _accountSelected(
    AccountSelectedEvent event,
    Emitter<AccountState> emit,
  ) async {
    final List<TransactionEntity> expenses = getTransactionsByAccountIdUseCase(
      GetTransactionsByAccountIdParams(event.account.superId!),
    );
    emit(AccountSelectedState(event.account, expenses));
  }

  FutureOr<void> _updateCardType(
    UpdateCardTypeEvent event,
    Emitter<AccountState> emit,
  ) async {
    selectedType = event.cardType;
    emit(UpdateCardTypeState(event.cardType));
  }

  FutureOr<void> _fetchExpensesFromAccountId(
    FetchExpensesFromAccountIdEvent event,
    Emitter<AccountState> emit,
  ) async {
    List<TransactionEntity> expenses = getTransactionsByAccountIdUseCase(
      GetTransactionsByAccountIdParams(int.parse(event.accountId)),
    );
    emit(ExpensesFromAccountIdState(expenses));
  }

  FutureOr<void> _updateAccountColor(
    AccountColorSelectedEvent event,
    Emitter<AccountState> emit,
  ) {
    selectedColor = event.accountColor;
    emit(AccountColorSelectedState(event.accountColor));
  }

  FutureOr<void> _fetchAccountAndExpensesFromId(
    FetchAccountAndExpenseFromIdEvent event,
    Emitter<AccountState> emit,
  ) async {
    final int accountId = event.accountId;
    final AccountEntity? account = getAccountUseCase(
      GetAccountParams(accountId),
    );

    if (account != null) {
      final List<TransactionEntity> expenses =
          getTransactionsByAccountIdUseCase(
        GetTransactionsByAccountIdParams(accountId),
      );
      emit(AccountAndExpensesState(account, expenses));
    }
  }
}
