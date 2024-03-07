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
  String get name {
    switch (this) {
      case RoutesName.login:
        return 'login';
      case RoutesName.intro:
        return 'intro';
      case RoutesName.userOnboarding:
        return 'onboarding';
      case RoutesName.biometric:
        return 'biometric';
      case RoutesName.landing:
        return 'landing';
      case RoutesName.search:
        return 'search';
      case RoutesName.addTransaction:
        return 'add-transaction';
      case RoutesName.editTransaction:
        return 'edit-transaction';
      case RoutesName.addCategory:
        return 'add-category';
      case RoutesName.editCategory:
        return 'edit-category';
      case RoutesName.addAccount:
        return 'add-account';
      case RoutesName.editAccount:
        return 'edit-account';
      case RoutesName.addRecurring:
        return 'add-recurring';
      case RoutesName.addDebtCredit:
        return 'add-debit-credit';
      case RoutesName.editDebitCredit:
        return 'edit-debit-credit';
      case RoutesName.transactionsByCategory:
        return 'transactions';
      case RoutesName.settings:
        return 'settings';
      case RoutesName.exportAndImport:
        return 'import-export';
      case RoutesName.appLanguageChanger:
        return 'app-language';
      case RoutesName.appFontChanger:
        return 'font-picker';
      case RoutesName.accountTransactions:
        return 'account-transactions';
      case RoutesName.iconPicker:
        return 'icon-picker';
      case RoutesName.accountTransactionsEditAccount:
        return 'account-transaction-edit-account';
      case RoutesName.accountAddTransaction:
        return 'account-add-transaction';
      case RoutesName.accountEditTransaction:
        return 'account-edit-transaction';
    }
  }

  String get path {
    switch (this) {
      case RoutesName.login:
        return '/login';
      case RoutesName.intro:
        return '/intro';
      case RoutesName.userOnboarding:
        return '/onboarding';
      case RoutesName.biometric:
        return '/biometric';
      case RoutesName.landing:
        return '/landing';
      case RoutesName.search:
        return 'search';
      case RoutesName.addTransaction:
        return 'add-transaction';
      case RoutesName.editTransaction:
        return 'edit-transaction/:eid';
      case RoutesName.addCategory:
        return 'add-category';
      case RoutesName.editCategory:
        return 'edit-category/:cid';
      case RoutesName.addAccount:
        return 'add-account';
      case RoutesName.editAccount:
        return 'edit-account/:aid';
      case RoutesName.addRecurring:
        return 'add-recurring';
      case RoutesName.addDebtCredit:
        return 'add-debit-credit';
      case RoutesName.editDebitCredit:
        return 'edit-debit-credit/:did';
      case RoutesName.transactionsByCategory:
        return 'transactions/:cid';
      case RoutesName.settings:
        return 'settings';
      case RoutesName.exportAndImport:
        return 'import-export';
      case RoutesName.appLanguageChanger:
        return 'app-language';
      case RoutesName.appFontChanger:
        return 'font-picker';
      case RoutesName.accountTransactions:
        return 'account-transactions/:aid';
      case RoutesName.iconPicker:
        return 'icon-picker';
      case RoutesName.accountTransactionsEditAccount:
        return 'edit-account';
      case RoutesName.accountAddTransaction:
        return 'add-transaction';
      case RoutesName.accountEditTransaction:
        return 'edit-transaction/:eid';
    }
  }
}
