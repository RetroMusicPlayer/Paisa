import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:paisa/core/enum/card_type.dart';
import 'package:paisa/features/account/domain/entities/account.dart';
import 'package:paisa/features/account/domain/use_case/account_use_case.dart';
import 'package:paisa/features/category/domain/use_case/get_category_use_case.dart';
import 'package:paisa/features/transaction/domain/entities/expense.dart';
import 'package:paisa/features/transaction/domain/use_case/expense_use_case.dart';

part 'accounts_event.dart';
part 'accounts_state.dart';

@injectable
class AccountsBloc extends Bloc<AccountsEvent, AccountsState> {
  AccountsBloc({
    required this.getAccountUseCase,
    required this.deleteAccountUseCase,
    required this.getExpensesFromAccountIdUseCase,
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
  String? accountNumber;
  final AddAccountUseCase addAccountUseCase;
  AccountEntity? currentAccount;
  final DeleteAccountUseCase deleteAccountUseCase;
  final DeleteExpensesFromAccountIdUseCase deleteExpensesFromAccountIdUseCase;
  final GetAccountUseCase getAccountUseCase;
  final GetCategoryUseCase getCategoryUseCase;
  final GetExpensesFromAccountIdUseCase getExpensesFromAccountIdUseCase;
  double? initialAmount;
  int? selectedColor;
  CardType selectedType = CardType.cash;
  final UpdateAccountUseCase updateAccountUseCase;

  Future<void> _fetchAccountFromId(
    FetchAccountFromIdEvent event,
    Emitter<AccountsState> emit,
  ) async {
    final int? accountId = int.tryParse(event.accountId ?? '');
    if (accountId == null) return;

    final AccountEntity? account =
        getAccountUseCase(params: GetAccountParams(accountId));
    if (account != null) {
      accountName = account.bankName;
      accountHolderName = account.name;
      accountNumber = account.number;
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
    Emitter<AccountsState> emit,
  ) async {
    final String? bankName = accountName;
    final String? holderName = accountHolderName;
    final String? number = accountNumber;
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
      await addAccountUseCase(
          params: AddAccountParams(
        bankName: bankName,
        holderName: holderName,
        number: number ?? '',
        cardType: cardType,
        amount: amount ?? 0,
        color: color,
      ));
    } else {
      if (currentAccount == null) return;
      await updateAccountUseCase(
          params: UpdateAccountParams(
        currentAccount!.superId!,
        bankName: bankName,
        holderName: holderName,
        number: number ?? '',
        cardType: cardType,
        amount: amount ?? 0,
        color: color,
      ));
    }
    emit(AccountAddedState(isAddOrUpdate: event.isAdding));
  }

  FutureOr<void> _deleteAccount(
    DeleteAccountEvent event,
    Emitter<AccountsState> emit,
  ) async {
    final int accountId = int.parse(event.accountId);
    await deleteExpensesFromAccountIdUseCase(
      params: DeleteTransactionsFromAccountIdParams(accountId),
    );
    await deleteAccountUseCase(params: DeleteAccountParams(accountId));
    emit(AccountDeletedState());
  }

  FutureOr<void> _accountSelected(
    AccountSelectedEvent event,
    Emitter<AccountsState> emit,
  ) async {
    final List<Transaction> expenses =
        getExpensesFromAccountIdUseCase(event.account.superId!);
    emit(AccountSelectedState(event.account, expenses));
  }

  FutureOr<void> _updateCardType(
    UpdateCardTypeEvent event,
    Emitter<AccountsState> emit,
  ) async {
    selectedType = event.cardType;
    emit(UpdateCardTypeState(event.cardType));
  }

  FutureOr<void> _fetchExpensesFromAccountId(
    FetchExpensesFromAccountIdEvent event,
    Emitter<AccountsState> emit,
  ) async {
    List<Transaction> expenses =
        getExpensesFromAccountIdUseCase(int.parse(event.accountId));
    emit(ExpensesFromAccountIdState(expenses));
  }

  FutureOr<void> _updateAccountColor(
    AccountColorSelectedEvent event,
    Emitter<AccountsState> emit,
  ) {
    selectedColor = event.accountColor;
    emit(AccountColorSelectedState(event.accountColor));
  }

  FutureOr<void> _fetchAccountAndExpensesFromId(
    FetchAccountAndExpenseFromIdEvent event,
    Emitter<AccountsState> emit,
  ) async {
    final int? accountId = int.tryParse(event.accountId);
    if (accountId == null) {
      return;
    }
    final AccountEntity? account = getAccountUseCase(
      params: GetAccountParams(accountId),
    );
    final List<Transaction> expenses =
        getExpensesFromAccountIdUseCase(accountId);
    if (account != null) {
      emit(AccountAndExpensesState(account, expenses));
    }
  }
}
