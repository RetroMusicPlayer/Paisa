import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hive_flutter/adapters.dart';

import '../common/enum/box_types.dart';
import '../data/settings/settings_service.dart';
import '../main.dart';
import '../presentation/accounts/pages/add_account_page.dart';
import '../presentation/budget_overview/pages/expense_list_page.dart';
import '../presentation/category/pages/add_category_page.dart';
import '../presentation/debits/pages/add_debt_page.dart';
import '../presentation/expense/pages/expense_page.dart';
import '../presentation/home/pages/home_page.dart';
import '../presentation/login/pages/user_image_page.dart';
import '../presentation/login/pages/user_name_page.dart';
import '../presentation/settings/pages/export_and_import_page.dart';
import '../presentation/settings/pages/setting_page.dart';
import '../presentation/splash/pages/splash_screen_page.dart';

const loginPath = '/login';
const loginName = 'login';

const splashPath = '/splash';
const splashName = 'splash';

const userNamePath = '/user-name';
const userImagePath = '/user-image';
const landingPath = '/landing';
const landingName = 'landing';

const addExpensePath = 'add-expense';
const editExpensePath = 'edit-expense';
const addCategoryPath = 'add-category';
const editCategoryPath = 'edit-category';
const addAccountPath = 'add-account';
const editAccountPath = 'edit-account';
const expensesByCategory = 'expenses';
const exportAndImport = 'export-import';
const settingsPath = 'settings';
const settingsName = 'settings';
const debitAddOrEditPath = 'edit-debit';
const addDebitName = 'debit-add';

final settings = Hive.box(BoxType.settings.stringValue);

final GoRouter goRouter = GoRouter(
  initialLocation: loginPath,
  errorBuilder: (context, state) => Center(
    child: Text(state.error.toString()),
  ),
  redirect: (_, state) {
    final isLogging = state.location == loginPath;
    final String name = settings.get(userNameKey, defaultValue: '');
    if (name.isEmpty && isLogging) {
      return userNamePath;
    }
    final String image = settings.get(userImageKey, defaultValue: '');
    if (image.isEmpty && isLogging) {
      return userImagePath;
    }
    final languageCode = settings.get(userLanguageKey, defaultValue: 'DEF');
    if (languageCode == 'DEF' && isLogging) {
      return splashPath;
    }
    if (name.isNotEmpty && image.isNotEmpty && isLogging) {
      currentLocale = languageCode;
      return landingPath;
    }
    return null;
  },
  refreshListenable: settings.listenable(),
  debugLogDiagnostics: true,
  routes: [
    GoRoute(
      name: loginName,
      path: loginPath,
      builder: (context, state) =>
          const Center(child: CircularProgressIndicator()),
    ),
    GoRoute(
      name: splashName,
      path: splashPath,
      builder: (context, state) {
        if (state.extra is Map) {
          final map = state.extra as Map;
          return SplashScreenPage(
            forceChangeCurrency: map['force_change_currency'] as bool,
          );
        } else {
          return const SplashScreenPage();
        }
      },
    ),
    GoRoute(
      name: landingName,
      path: landingPath,
      builder: (context, state) => const LandingPage(),
      routes: [
        GoRoute(
          path: addExpensePath,
          builder: (context, state) => const ExpensePage(),
        ),
        GoRoute(
          name: editExpensePath,
          path: 'edit-expense/:eid',
          builder: (context, state) =>
              ExpensePage(expenseId: state.params['eid']),
        ),
        GoRoute(
          name: addCategoryPath,
          path: addCategoryPath,
          builder: (context, state) => const AddCategoryPage(),
        ),
        GoRoute(
          name: editCategoryPath,
          path: 'edit-category/:cid',
          builder: (context, state) => AddCategoryPage(
            categoryId: state.params['cid'],
          ),
        ),
        GoRoute(
          name: addAccountPath,
          path: addAccountPath,
          builder: (context, state) => const AddAccountPage(),
        ),
        GoRoute(
          name: editAccountPath,
          path: 'edit-account/:aid',
          builder: (context, state) => AddAccountPage(
            accountId: state.params['aid'],
          ),
        ),
        GoRoute(
          name: expensesByCategory,
          path: 'expenses/:cid',
          builder: (context, state) => ExpenseListPage(
            categoryId: state.params['cid'],
          ),
        ),
        GoRoute(
          name: exportAndImport,
          path: 'export-import',
          builder: (context, state) => ExportAndImportPage(),
        ),
        GoRoute(
          name: settingsName,
          path: settingsPath,
          builder: (context, state) => const SettingsPage(),
        ),
        GoRoute(
          name: addDebitName,
          path: addDebitName,
          builder: (context, state) => const DebtAddOrEditPage(),
        ),
        GoRoute(
          name: debitAddOrEditPath,
          path: 'debt/:did',
          builder: (context, state) => DebtAddOrEditPage(
            debtId: state.params['did'],
          ),
        ),
      ],
    ),
    GoRoute(
      name: 'user-name',
      path: userNamePath,
      builder: (context, state) => UserNamePage(),
    ),
    GoRoute(
      name: 'user-image',
      path: userImagePath,
      builder: (context, state) => const UserImagePage(),
    ),
  ],
);
