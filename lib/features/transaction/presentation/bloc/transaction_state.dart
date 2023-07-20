part of 'transaction_bloc.dart';

@immutable
abstract class TransactionState extends Equatable {
  const TransactionState();

  @override
  List<Object> get props => [];
}

class ExpenseInitial extends TransactionState {}

class TransactionAdded extends TransactionState {
  const TransactionAdded({this.isAddOrUpdate = false});

  final bool isAddOrUpdate;

  @override
  List<Object> get props => [isAddOrUpdate];
}

class TransactionDeletedState extends TransactionState {}

class ChangeTransactionTypeState extends TransactionState {
  const ChangeTransactionTypeState(this.transactionType);

  final TransactionType transactionType;

  @override
  List<Object> get props => [transactionType];
}

class ChangeRecurringTypeState extends TransactionState {
  const ChangeRecurringTypeState(this.recurringType);

  final RecurringType recurringType;

  @override
  List<Object> get props => [recurringType];
}

class TransactionErrorState extends TransactionState {
  const TransactionErrorState(this.errorString);

  final String errorString;

  @override
  List<Object> get props => [errorString];
}

class TransactionFoundState extends TransactionState {
  const TransactionFoundState(this.expense);

  final TransactionModel expense;

  @override
  List<Object> get props => [expense];
}

class ChangeCategoryState extends TransactionState {
  const ChangeCategoryState(this.category);

  final CategoryEntity category;

  @override
  List<Object> get props => [category];
}

class ChangeAccountState extends TransactionState {
  const ChangeAccountState(this.account);

  final AccountEntity account;

  @override
  List<Object> get props => [account];
}

class UpdateDateTimeState extends TransactionState {
  const UpdateDateTimeState(this.dateTime);

  final DateTime dateTime;

  @override
  List<Object> get props => [dateTime];
}

class TransferAccountState extends TransactionState {
  const TransferAccountState(
    this.isFromAccount,
    this.fromAccount,
    this.toAccount,
  );

  final bool isFromAccount;
  final AccountEntity? fromAccount, toAccount;

  @override
  List<Object> get props => [isFromAccount];
}

class DefaultCategoriesState extends TransactionState {
  const DefaultCategoriesState(this.categories);

  final List<CategoryEntity> categories;

  @override
  List<Object> get props => [categories];
}
