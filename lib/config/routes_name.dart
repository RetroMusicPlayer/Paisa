enum RoutesName {
  login,
  intro,
  userOnboarding,
  biometric,
  landing,
  search,
  addTransaction,
  editTransaction,
  addCategory,
  editCategory,
  addAccount,
  editAccount,
  addRecurring,
  addDebtCredit,
  editDebitCredit,
  transactionsByCategory,
  settings,
  exportAndImport,
  appLanguageChanger,
  appFontChanger,
  accountTransactions,
  accountTransactionsEditAccount,
  accountAddTransaction,
  accountEditTransaction,
  iconPicker,
}

extension RoutesNameHelper on RoutesName {
  String get name => toString().split('.').last;
  String get path => '/$name';
}
