import 'dart:async';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:paisa/core/common.dart';
import 'package:paisa/core/enum/card_type.dart';
import 'package:paisa/core/error/bloc_errors.dart';
import 'package:paisa/core/use_case/use_case.dart';
import 'package:paisa/features/account/domain/entities/account_entity.dart';
import 'package:paisa/features/account/domain/use_case/account_use_case.dart';
import 'package:paisa/features/category/domain/use_case/get_category_use_case.dart';
import 'package:paisa/features/country_picker/domain/entities/country.dart';
import 'package:paisa/features/country_picker/domain/use_case/get_contries_user_case.dart';
import 'package:paisa/features/transaction/domain/entities/transaction.dart';
import 'package:paisa/features/transaction/domain/use_case/transaction_use_case.dart';

part 'accounts_bloc.freezed.dart';
part 'accounts_event.dart';
part 'accounts_state.dart';

@injectable
class AccountBloc extends Bloc<AccountsEvent, AccountState> {
  AccountBloc(
    this.getAccountUseCase,
    this.deleteAccountUseCase,
    this.getTransactionsByAccountIdUseCase,
    this.addAccountUseCase,
    this.getCategoryUseCase,
    this.deleteExpensesFromAccountIdUseCase,
    this.updateAccountUseCase,
    this.getCountryUseCase,
  ) : super(const AccountsInitial()) {
    on<AccountsEvent>((event, emit) {});
    on<AddOrUpdateAccountEvent>(_addAccount);
    on<DeleteAccountEvent>(_deleteAccount);
    on<UpdateCardTypeEvent>(_updateCardType);
    on<FetchAccountFromIdEvent>(_fetchAccountFromId);
    on<AccountColorSelectedEvent>(_updateAccountColor);
    on<FetchAccountAndExpenseFromIdEvent>(_fetchAccountAndExpensesFromId);
    on<FetchCountriesEvent>(_fetchCountries);
    on<_UpdateDefaultAndExculde>(_updateAccountDefaults);
  }

  String? accountHolderName;
  String? accountName;
  final AddAccountUseCase addAccountUseCase;
  Country? currencySymbol;
  AccountEntity? currentAccount;
  final DeleteAccountUseCase deleteAccountUseCase;
  final DeleteTransactionsByAccountIdUseCase deleteExpensesFromAccountIdUseCase;
  final GetAccountUseCase getAccountUseCase;
  final GetCategoryUseCase getCategoryUseCase;
  final GetCountriesUseCase getCountryUseCase;
  final GetTransactionsByAccountIdUseCase getTransactionsByAccountIdUseCase;
  double? initialAmount;
  bool isAccountDefault = false;
  bool isAccountExcluded = false;
  int? selectedColor;
  CardType selectedType = CardType.cash;
  final UpdateAccountUseCase updateAccountUseCase;

  Future<void> _fetchAccountFromId(
    FetchAccountFromIdEvent event,
    Emitter<AccountState> emit,
  ) async {
    final AccountEntity? account =
        getAccountUseCase(GetAccountParams(event.accountId));
    if (account != null) {
      accountName = account.bankName;
      accountHolderName = account.name;
      selectedType = account.cardType ?? CardType.cash;
      initialAmount = account.amount;
      currentAccount = account;
      selectedColor = account.color ?? Colors.brown.shade100.value;
      currencySymbol = account.country;
      isAccountExcluded = account.isAccountExcluded ?? false;
      isAccountDefault = account.isAccountDefault ?? false;
      emit(AccountState.accountState(account));
      //emit(AccountState.updateCardType(selectedType));
    } else {
      emit(const AccountState.errorAccountState(
          AccountErrors.accountNotFound()));
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
          AccountErrors.accountNotFound()));
    }
    if (holderName == null) {
      return emit(const AccountState.errorAccountState(
          AccountErrors.holderNameError()));
    }
    if (color == null) {
      return emit(
        const AccountState.errorAccountState(AccountErrors.colorError()),
      );
    }

    if (event.addOrUpdate) {
      await addAccountUseCase(AddAccountParams(
        bankName: bankName,
        holderName: holderName,
        cardType: cardType,
        amount: amount,
        color: color,
        isAccountExcluded: isAccountExcluded,
        currencySymbol: currencySymbol,
        isAccountDefault: isAccountDefault,
      ));
    } else {
      if (currentAccount == null) return;
      await updateAccountUseCase(UpdateAccountParams(
        currentAccount!.superId!,
        bankName: bankName,
        holderName: holderName,
        cardType: cardType,
        amount: amount ?? 0,
        color: color,
        isAccountExcluded: isAccountExcluded,
        currencySymbol: currencySymbol,
        isAccountDefault: isAccountDefault,
      ));
    }
    emit(AccountState.addAccountState(event.addOrUpdate));
  }

  FutureOr<void> _deleteAccount(
    DeleteAccountEvent event,
    Emitter<AccountState> emit,
  ) async {
    await deleteExpensesFromAccountIdUseCase(
      DeleteTransactionsFromAccountIdParams(event.accountId),
    );
    await deleteAccountUseCase(DeleteAccountParams(event.accountId));
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
    final AccountEntity? account =
        getAccountUseCase(GetAccountParams(event.accountId));
    final List<TransactionEntity> expenses = getTransactionsByAccountIdUseCase(
      GetTransactionsByAccountIdParams(event.accountId),
    );
    if (account != null) {
      emit(AccountState.accountAndExpenseState(account, expenses));
    }
  }

  FutureOr<void> _fetchCountries(
    FetchCountriesEvent event,
    Emitter<AccountState> emit,
  ) {
    final List<Country> countries = getCountryUseCase(NoParams()).toEntities();
    emit(AccountState.countries(countries));
  }

  FutureOr<void> _updateAccountDefaults(
    _UpdateDefaultAndExculde event,
    Emitter<AccountState> emit,
  ) {
    isAccountDefault = event.isAccountDefault;
    isAccountExcluded = event.isAccountExcluded;
    emit(AccountState.updateAccountExcluded(
      isAccountDefault: event.isAccountDefault,
      isAccountExcluded: event.isAccountExcluded,
    ));
  }
}
