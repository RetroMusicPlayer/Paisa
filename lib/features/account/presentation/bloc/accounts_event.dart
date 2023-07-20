part of 'accounts_bloc.dart';

@immutable
abstract class AccountsEvent extends Equatable {
  const AccountsEvent();

  @override
  List<Object> get props => [];
}

class AddOrUpdateAccountEvent extends AccountsEvent {
  const AddOrUpdateAccountEvent(this.isAdding);

  final bool isAdding;
}

class DeleteAccountEvent extends AccountsEvent {
  const DeleteAccountEvent(this.accountId);

  final String accountId;

  @override
  List<Object> get props => [accountId];
}

class FetchAccountAndExpenseFromIdEvent extends AccountsEvent {
  const FetchAccountAndExpenseFromIdEvent(this.accountId);

  final String accountId;

  @override
  List<Object> get props => [accountId];
}

class AccountSelectedEvent extends AccountsEvent {
  const AccountSelectedEvent(this.account);

  final AccountEntity account;

  @override
  List<Object> get props => [account];
}

class FetchAccountFromIdEvent extends AccountsEvent {
  const FetchAccountFromIdEvent(this.accountId);

  final String? accountId;

  @override
  List<Object> get props => [accountId ?? ''];
}

class UpdateCardTypeEvent extends AccountsEvent {
  const UpdateCardTypeEvent(this.cardType);

  final CardType cardType;

  @override
  List<Object> get props => [cardType];
}

class FetchExpensesFromAccountIdEvent extends AccountsEvent {
  const FetchExpensesFromAccountIdEvent(this.accountId);

  final String accountId;

  @override
  List<Object> get props => [accountId];
}

class AccountColorSelectedEvent extends AccountsEvent {
  const AccountColorSelectedEvent(this.accountColor);

  final int accountColor;

  @override
  List<Object> get props => [accountColor];
}
