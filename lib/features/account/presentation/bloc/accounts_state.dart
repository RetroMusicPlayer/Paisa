part of 'accounts_bloc.dart';

@immutable
abstract class AccountsState extends Equatable {
  const AccountsState();

  @override
  List<Object> get props => [];
}

class AccountsInitial extends AccountsState {}

class AccountListState extends AccountsState {
  const AccountListState(this.accounts);

  final List<AccountEntity> accounts;

  @override
  List<Object> get props => [accounts];
}

class AccountAddedState extends AccountsState {
  const AccountAddedState({this.isAddOrUpdate = false});

  final bool isAddOrUpdate;

  @override
  List<Object> get props => [isAddOrUpdate];
}

class AccountDeletedState extends AccountsState {}

class AccountSelectedState extends AccountsState {
  const AccountSelectedState(this.account, this.expenses);

  final AccountEntity account;
  final List<Transaction> expenses;

  @override
  List<Object> get props => [account, expenses];
}

class AccountErrorState extends AccountsState {
  const AccountErrorState(this.errorString);

  final String errorString;

  @override
  List<Object> get props => [errorString];
}

class AccountSuccessState extends AccountsState {
  const AccountSuccessState(this.account);

  final AccountEntity account;

  @override
  List<Object> get props => [account];
}

class UpdateCardTypeState extends AccountsState {
  const UpdateCardTypeState(this.cardType);

  final CardType cardType;

  @override
  List<Object> get props => [cardType];
}

class ExpensesFromAccountIdState extends AccountsState {
  const ExpensesFromAccountIdState(this.expenses);

  final List<Transaction> expenses;

  @override
  List<Object> get props => [expenses];
}

class AccountColorSelectedState extends AccountsState {
  const AccountColorSelectedState(this.categoryColor);

  final int categoryColor;

  @override
  List<Object> get props => [categoryColor, identityHashCode(this)];
}

class AccountAndExpensesState extends AccountsState {
  const AccountAndExpensesState(this.account, this.expenses);

  final AccountEntity account;
  final List<Transaction> expenses;

  @override
  List<Object> get props => [account, expenses];
}
