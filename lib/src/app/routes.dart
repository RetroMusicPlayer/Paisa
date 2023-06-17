import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:paisa/src/presentation/category/pages/category_icon_picker_page.dart';

import '../../main.dart';
import '../core/common.dart';
import '../core/enum/box_types.dart';
import '../core/enum/transaction_type.dart';
import '../presentation/accounts/pages/account_transactions_page.dart';
import '../presentation/accounts/pages/add/add_account_page.dart';
import '../presentation/accounts/pages/selector/account_selector_page.dart';
import '../presentation/biometric/pages/biometric_page.dart';
import '../presentation/category/pages/add/add_category_page.dart';
import '../presentation/category/pages/category_list_page.dart';
import '../presentation/category/pages/selector/category_selector_page.dart';
import '../presentation/currency_selector/pages/currency_selector_page.dart';
import '../presentation/debts/pages/add/add_debt_page.dart';
import '../presentation/expense/pages/expense_page.dart';
import '../presentation/home/pages/home_page.dart';
import '../presentation/login/intro/into_page.dart';
import '../presentation/login/pages/user_image_page.dart';
import '../presentation/login/pages/user_name_page.dart';
import '../presentation/overview/pages/expense_list_page.dart';
import '../presentation/recurring/page/add_recurring_page.dart';
import '../presentation/recurring/page/recurring_page.dart';
import '../presentation/search/pages/search_page.dart';
import '../presentation/settings/pages/export_and_import_page.dart';
import '../presentation/settings/pages/setting_page.dart';

const loginPath = '/login';
const loginName = 'login';

const currencySelectorPath = '/currency-selector';
const currencySelectorName = 'currency-selector';

const userNamePath = '/user-name';
const userName = 'user-name';

const userImagePath = '/user-image';
const userImageName = 'user-image';

const biometricPath = '/biometric';
const biometricName = 'biometric';

const landingPath = '/landing';
const landingName = 'landing';

const searchPath = 'search';
const searchName = 'search';

const addTransactionPath = 'add-transaction';
const addTransactionsName = 'add-transaction';

const editTransactionsName = 'edit-transaction';
const editTransactionsPath = 'edit-transaction/:eid';

const addCategoryPath = 'add-category';
const addCategoryName = 'add-category';

const manageCategoriesPath = 'categories';
const manageCategoriesName = 'categories';

const editCategoryPath = 'edit-category/:cid';
const editCategoryName = 'edit-category';

const addAccountPath = 'add-account';
const addAccountName = 'add-account';

const editAccountPath = 'edit-account/:aid';
const editAccountName = 'edit-account';

const editAccountWithIdPath = 'edit';
const editAccountWithIdName = 'edit';

const addAccountWithIdPath = 'add';
const addAccountWithIdName = 'add';

const accountTransactionPath = 'account-transaction/:aid';
const accountTransactionName = 'account-transaction';

const expensesByCategoryName = 'expenses-by-category';
const expensesByCategoryPath = 'expenses-by-category/:cid';

const exportAndImportName = 'import-export';
const exportAndImportPath = 'import-export';

const recurringTransactionsName = 'recurring';
const recurringTransactionsPath = 'recurring';

const recurringName = 'add-recurring';
const recurringPath = 'add-recurring';

const settingsPath = 'settings';
const settingsName = 'settings';

const debtAddOrEditName = 'edit-debt';
const debtAddOrEditPath = 'edit-debt/:did';

const addDebitName = 'add-debit';
const addDebitPath = 'add-debit';

const introPageName = 'intro';
const introPagePath = '/intro';

const categorySelectorName = 'category-selector';
const categorySelectorPath = '/category-selector';

const accountSelectorName = 'account-selector';
const accountSelectorPath = '/account-selector';

const iconPickerName = 'icon-picker';
const iconPickerPath = 'icon-picker';

final settings = Hive.box(BoxType.settings.name);

final GoRouter goRouter = GoRouter(
  initialLocation: introPagePath,
  observers: [HeroController()],
  refreshListenable: settings.listenable(),
  debugLogDiagnostics: true,
  routes: [
    GoRoute(
      name: introPageName,
      path: introPagePath,
      builder: (context, state) => const IntroPage(),
    ),
    GoRoute(
      name: categorySelectorName,
      path: categorySelectorPath,
      builder: (context, state) => const CategorySelectorPage(),
    ),
    GoRoute(
      name: accountSelectorName,
      path: accountSelectorPath,
      builder: (context, state) => const AccountSelectorPage(),
    ),
    GoRoute(
      name: loginName,
      path: loginPath,
      builder: (context, state) =>
          const Center(child: CircularProgressIndicator()),
    ),
    GoRoute(
      name: currencySelectorName,
      path: currencySelectorPath,
      builder: (context, state) {
        final forceCurrencySelector =
            state.queryParameters['force_currency_selector'];
        return CurrencySelectorPage(
          forceCurrencySelector: forceCurrencySelector == 'true',
        );
      },
    ),
    GoRoute(
      name: userName,
      path: userNamePath,
      builder: (context, state) => UserNamePage(),
    ),
    GoRoute(
      name: userImageName,
      path: userImagePath,
      builder: (context, state) => const UserImagePage(),
    ),
    GoRoute(
      name: biometricName,
      path: biometricPath,
      builder: (context, state) => const BiometricPage(),
    ),
    GoRoute(
      name: landingName,
      path: landingPath,
      builder: (context, state) => const LandingPage(),
      routes: [
        GoRoute(
          path: addTransactionPath,
          name: addTransactionsName,
          pageBuilder: (context, state) {
            final String? transactionTypeString = state.queryParameters['type'];
            final String? accountId = state.queryParameters['aid'];
            final String? categoryId = state.queryParameters['cid'];
            final int typeInt = int.tryParse(transactionTypeString ?? '') ?? 0;
            final TransactionType transactionType =
                TransactionType.values[typeInt];
            return MaterialPage(
              key: ValueKey(state.location),
              child: ExpensePage(
                accountId: accountId,
                categoryId: categoryId,
                transactionType: transactionType,
              ),
            );
          },
        ),
        GoRoute(
          name: editTransactionsName,
          path: editTransactionsPath,
          pageBuilder: (context, state) => MaterialPage(
            key: ValueKey(
              state.location,
            ),
            child: ExpensePage(
              expenseId: state.pathParameters['eid'],
            ),
          ),
        ),
        GoRoute(
            name: addCategoryName,
            path: addCategoryPath,
            builder: (context, state) => const AddCategoryPage(),
            routes: [
              GoRoute(
                path: iconPickerPath,
                name: iconPickerName,
                builder: (context, state) => const CategoryIconPickerPage(),
              )
            ]),
        GoRoute(
          name: editCategoryName,
          path: editCategoryPath,
          builder: (context, state) => AddCategoryPage(
            categoryId: state.pathParameters['cid'],
          ),
        ),
        GoRoute(
          name: manageCategoriesName,
          path: manageCategoriesPath,
          builder: (context, state) => const CategoryListPage(),
        ),
        GoRoute(
          name: addAccountName,
          path: addAccountPath,
          builder: (context, state) => const AddAccountPage(),
        ),
        GoRoute(
          name: editAccountName,
          path: editAccountPath,
          builder: (context, state) => AddAccountPage(
            accountId: state.pathParameters['aid'],
          ),
        ),
        GoRoute(
          name: accountTransactionName,
          path: accountTransactionPath,
          builder: (context, state) {
            final String accountId = state.pathParameters['aid'] as String;
            return AccountTransactionsPage(
              accountId: accountId,
            );
          },
          routes: [
            GoRoute(
              name: editAccountWithIdName,
              path: editAccountWithIdPath,
              builder: (context, state) {
                final String? accountId = state.pathParameters['aid'];
                return AddAccountPage(
                  accountId: accountId,
                );
              },
            ),
            GoRoute(
              path: addAccountWithIdPath,
              name: addAccountWithIdName,
              pageBuilder: (context, state) {
                final String? transactionTypeString =
                    state.queryParameters['type'];
                final String? accountId = state.queryParameters['aid'];
                final int typeInt =
                    int.tryParse(transactionTypeString ?? '') ?? 0;
                final TransactionType transactionType =
                    TransactionType.values[typeInt];
                return MaterialPage(
                  key: ValueKey(state.location),
                  child: ExpensePage(
                    accountId: accountId,
                    transactionType: transactionType,
                  ),
                );
              },
            ),
          ],
        ),
        GoRoute(
          name: expensesByCategoryName,
          path: expensesByCategoryPath,
          builder: (context, state) => ExpenseListPage(
            categoryId: state.pathParameters['cid'] as String,
            accountLocalDataSource: getIt.get(),
            categoryLocalDataSource: getIt.get(),
            expenseDataManager: getIt.get(),
          ),
        ),
        GoRoute(
          name: addDebitName,
          path: addDebitPath,
          builder: (context, state) => const AddOrEditDebtPage(),
        ),
        GoRoute(
          name: debtAddOrEditName,
          path: debtAddOrEditPath,
          builder: (context, state) => AddOrEditDebtPage(
            debtId: state.pathParameters['did'],
          ),
        ),
        GoRoute(
          name: searchName,
          path: searchPath,
          builder: (context, state) => const SearchPage(),
        ),
        GoRoute(
          name: recurringTransactionsName,
          path: recurringTransactionsPath,
          builder: (context, state) => const RecurringPage(),
          routes: [
            GoRoute(
              name: recurringName,
              path: recurringPath,
              builder: (context, state) => const AddRecurringPage(),
            ),
          ],
        ),
        GoRoute(
          name: settingsName,
          path: settingsPath,
          builder: (context, state) => const SettingsPage(),
          routes: [
            GoRoute(
              name: exportAndImportName,
              path: exportAndImportPath,
              builder: (context, state) => const ExportAndImportPage(),
            ),
          ],
        ),
      ],
    ),
  ],
  errorBuilder: (context, state) => Center(
    child: Text(state.error.toString()),
  ),
  redirect: (_, state) async {
    final isLogging = state.location == introPagePath;
    bool isIntroDone = settings.get(userIntroKey, defaultValue: false);
    if (!isIntroDone) {
      return introPagePath;
    }
    final String name = settings.get(userNameKey, defaultValue: '');
    if (name.isEmpty && isLogging) {
      return userNamePath;
    }
    final String image = settings.get(userImageKey, defaultValue: '');
    if (image.isEmpty && isLogging) {
      return userImagePath;
    }

    final bool categorySelectorDone = settings.get(
      userCategorySelectorKey,
      defaultValue: true,
    );
    if (categorySelectorDone && isLogging) {
      return categorySelectorPath;
    }

    final bool accountSelectorDone = settings.get(
      userAccountSelectorKey,
      defaultValue: true,
    );
    if (accountSelectorDone && isLogging) {
      return accountSelectorPath;
    }

    final Map<dynamic, dynamic>? json = settings.get(userCountryKey);
    if (json == null && isLogging) {
      return currencySelectorPath;
    }

    final isBiometricEnabled = settings.get(userAuthKey, defaultValue: false);
    if (isBiometricEnabled &&
        name.isNotEmpty &&
        image.isNotEmpty &&
        isLogging) {
      return biometricPath;
    } else if (name.isNotEmpty && image.isNotEmpty && isLogging) {
      return landingPath;
    }
    return null;
  },
);
