part of 'accounts_bloc.dart';

@freezed
class AccountsEvent with _$AccountsEvent {
  const factory AccountsEvent.addOrUpdate(bool addOrUpdate) =
      AddOrUpdateAccountEvent;
  const factory AccountsEvent.updateDefaultAndExculde({
    @Default(false) bool isAccountExcluded,
    @Default(false) bool isAccountDefault,
  }) = _UpdateDefaultAndExclude;
  const factory AccountsEvent.deleteAccount(int accountId) = DeleteAccountEvent;

  const factory AccountsEvent.fetchAccountAndExpensesFromID(int accountId) =
      FetchAccountAndExpenseFromIdEvent;

  const factory AccountsEvent.fetchAccountFromID(int accountId) =
      FetchAccountFromIdEvent;

  const factory AccountsEvent.selectedAccountColor(int color) =
      AccountColorSelectedEvent;

  const factory AccountsEvent.updateCardType(CardType cardType) =
      UpdateCardTypeEvent;
  const factory AccountsEvent.fetchCountries() = FetchCountriesEvent;
}
