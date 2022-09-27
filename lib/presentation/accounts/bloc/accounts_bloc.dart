import 'package:bloc/bloc.dart' show Bloc, Emitter;
import 'package:equatable/equatable.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';

import '../../../common/enum/box_types.dart';
import '../../../common/enum/card_type.dart';
import '../../../data/accounts/model/account.dart';
import '../../../domain/account/use_case/account_use_case.dart';

part 'accounts_event.dart';
part 'accounts_state.dart';

class AccountsBloc extends Bloc<AccountsEvent, AccountsState> {
  AccountsBloc({
    required this.accountUseCase,
  }) : super(AccountsInitial()) {
    on<AccountsEvent>((event, emit) {});
    on<FetchAccountsEvent>((event, emit) => _fetchAccounts(emit));
    on<AddAccountEvent>((event, emit) => _addAccount(event, emit));
    on<DeleteAccountEvent>((event, emit) => _deleteAccount(event, emit));
    on<AccountSelectedEvent>((event, emit) => _accountSelected(event, emit));
    on<UpdateAccountEvent>((event, emit) => _updateAccount(event, emit));
    on<ClearAccountEvent>((event, emit) => _clearAccount(event, emit));
    on<FetchAccountFromIdEvent>(
        (event, emit) => _fetchAccountFromId(event, emit));
  }
  final AccountUseCase accountUseCase;
  late final box = Hive.box<Account>(BoxType.accounts.stringValue);

  _fetchAccounts(Emitter<AccountsState> emit) async {
    final accounts = await accountUseCase.accounts();
    emit(AccountListState(accounts));
  }

  Future<void> _addAccount(
    AddAccountEvent event,
    Emitter<AccountsState> emit,
  ) async {
    final String? bankName = event.bankName;
    final String? accountHolderName = event.holderName;
    final String? accountNumber = event.number;
    final icon = event.icon;
    final cardType = event.cardType;

    if (bankName == null) {
      return emit(const AccountErrorState('Set bank name'));
    }
    if (accountHolderName == null) {
      return emit(const AccountErrorState('Set account holder name'));
    }
    if (accountNumber == null) {
      return emit(const AccountErrorState('Set account number'));
    }

    await accountUseCase.addAccount(
      bankName: bankName,
      holderName: accountHolderName,
      number: accountNumber,
      icon: icon,
      validThru: event.validThru,
      cardType: cardType,
    );

    emit(const AddAccountState(isAddOrUpdate: true));
  }

  Future<void> _updateAccount(
    UpdateAccountEvent event,
    Emitter<AccountsState> emit,
  ) async {
    final String? bankName = event.bankName;
    final String? accountHolderName = event.holderName;
    final String? accountNumber = event.number;
    final icon = event.icon;
    final cardType = event.cardType;

    if (bankName == null) {
      return emit(const AccountErrorState('Set bank name'));
    }
    if (accountHolderName == null) {
      return emit(const AccountErrorState('Set account holder name'));
    }
    if (accountNumber == null) {
      return emit(const AccountErrorState('Set account number'));
    }
    event.account!
      ..bankName = bankName
      ..cardType = cardType
      ..icon = icon
      ..name = accountHolderName
      ..validThru = event.validThru
      ..cardType = cardType;

    await event.account!.save();
    emit(const AddAccountState());
  }

  _deleteAccount(DeleteAccountEvent event, Emitter<AccountsState> emit) async {
    await accountUseCase.deleteAccount(event.account.key);
    emit(AccountDeletedState());
  }

  _accountSelected(AccountSelectedEvent event, Emitter<AccountsState> emit) {
    emit(AccountSelectedState(event.account));
  }

  _fetchAccountFromId(
    FetchAccountFromIdEvent event,
    Emitter<AccountsState> emit,
  ) async {
    final int? accountId = int.tryParse(event.accountId ?? '');
    if (accountId == null) return;

    final Account? account = await accountUseCase.fetchAccountFromId(accountId);
    if (account != null) {
      emit(AccountSuccessState(account));
    } else {
      emit(const AccountErrorState('Account not found!'));
    }
  }

  _clearAccount(
    ClearAccountEvent event,
    Emitter<AccountsState> emit,
  ) async {
    final int? expenseId = int.tryParse(event.accountId);
    if (expenseId == null) return;
    await accountUseCase.deleteAccount(expenseId);
    emit(AccountDeletedState());
  }
}
