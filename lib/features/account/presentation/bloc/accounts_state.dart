part of 'accounts_bloc.dart';

@freezed
class AccountState with _$AccountState {
  const factory AccountState.accountState(AccountEntity account) =
      AccountSuccessState;

  const factory AccountState.accountsState(List<AccountEntity> account) =
      AccountListState;

  const factory AccountState.addAccountState(bool isAddOrUpdate) =
      AccountAddedState;

  const factory AccountState.colorSelected(int color) =
      AccountColorSelectedState;

  const factory AccountState.countries(List<CountryEntity> countries) =
      CountriesState;

  const factory AccountState.deleteAccountState() = AccountDeletedState;

  const factory AccountState.errorAccountState(AccountErrors accountErrors) =
      AccountErrorState;

  const factory AccountState.idle() = AccountsInitial;

  const factory AccountState.updateAccountExcluded({
    @Default(false) bool isAccountExcluded,
  }) = UpdateAccountExcludeState;

  const factory AccountState.updateCardType(CardType cardType) =
      UpdateCardTypeState;

  const factory AccountState.selectedAccount(
    AccountEntity accountEntity,
    List<TransactionEntity> transactions,
  ) = AccountSelectedState;

  // Add a new state for holding transactions by month
  const factory AccountState.transactionsByMonth(
    int accountId,
    DateTime month,
    List<TransactionEntity> transactions,
  ) = TransactionsByMonthState;
}
