part of 'transaction_bloc.dart';

@freezed
class TransactionState with _$TransactionState {
  const factory TransactionState.changeAccount(AccountEntity account) =
      ChangeAccountState;

  const factory TransactionState.changeTransactionType(
      TransactionType transactionType) = ChangeTransactionTypeState;

  const factory TransactionState.changecCategory(CategoryEntity category) =
      ChangeCategoryState;

  const factory TransactionState.initial() = ExpenseInitial;

  const factory TransactionState.transaction(TransactionEntity transaction) =
      TransactionFoundState;

  const factory TransactionState.transactionAdded(
      {@Default(false) bool isAddOrUpdate}) = TransactionAdded;

  const factory TransactionState.transactionDeleted() = TransactionDeletedState;

  const factory TransactionState.transactionError(String errorString) =
      TransactionErrorState;

  const factory TransactionState.transferAccount({
    AccountEntity? fromAccount,
    AccountEntity? toAccount,
    @Default(false) bool isFromAccount,
  }) = TransferAccountState;

  const factory TransactionState.updateDateTime(DateTime dateTime) =
      UpdateDateTimeState;

  const factory TransactionState.transactionLoading() = TransactionLoading;
  const factory TransactionState.transactionLoaded(
      List<TransactionEntity> transactions) = TransactionLoaded;
}
