part of 'transaction_bloc.dart';

@freezed
class TransactionEvent with _$TransactionEvent {
  const factory TransactionEvent.addOrUpdate(bool isAdding) =
      _AddOrUpdateExpenseEvent;

  const factory TransactionEvent.delete(int expenseId) = _ClearExpenseEvent;
  const factory TransactionEvent.changeTransactionType(
    TransactionType transactionType,
  ) = _ChangeTransactionTypeEvent;

  const factory TransactionEvent.transferAccount(
    AccountEntity account, {
    @Default(false) bool isFromAccount,
  }) = _TransferAccountEvent;

  const factory TransactionEvent.addRecurring() = _AddRecurringEvent;

  const factory TransactionEvent.changeAccount(AccountEntity account) =
      _ChangeAccountEvent;

  const factory TransactionEvent.changeCategory(CategoryEntity category) =
      _ChangeCategoryEvent;

  const factory TransactionEvent.defaultCategory() = _FetchDefaultCategoryEvent;

  const factory TransactionEvent.findTransaction(int? expenseId) =
      _FindTransactionFromIdEvent;

  const factory TransactionEvent.updateDateTime(DateTime dateTime) =
      _UpdateDateTimeEvent;
}
