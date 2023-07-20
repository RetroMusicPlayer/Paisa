import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:paisa/core/common.dart';
import 'package:paisa/core/common_enum.dart';
import 'package:paisa/features/account/presentation/pages/account_transactions_page.dart';
import 'package:paisa/features/account/presentation/pages/add/add_account_page.dart';
import 'package:paisa/features/account/presentation/pages/selector/account_selector_page.dart';
import 'package:paisa/features/category/presentation/pages/add/add_category_page.dart';
import 'package:paisa/features/category/presentation/pages/category_icon_picker_page.dart';
import 'package:paisa/features/category/presentation/pages/category_list_page.dart';
import 'package:paisa/features/category/presentation/pages/selector/category_selector_page.dart';
import 'package:paisa/features/country_picker/presentation/cubit/country_picker_cubit.dart';
import 'package:paisa/features/country_picker/presentation/pages/country_picker_page.dart';
import 'package:paisa/features/debit/presentation/pages/add/add_debt_page.dart';
import 'package:paisa/features/home/presentation/pages/home/home_page.dart';
import 'package:paisa/features/home/presentation/pages/overview/transactions_by_category_list_page.dart';
import 'package:paisa/features/intro/presentation/pages/biometric_page.dart';
import 'package:paisa/features/recurring/presentation/page/add_recurring_page.dart';
import 'package:paisa/features/recurring/presentation/page/recurring_page.dart';
import 'package:paisa/features/search/presentation/pages/search_page.dart';
import 'package:paisa/features/settings/presentation/pages/export_and_import_page.dart';
import 'package:paisa/features/settings/presentation/pages/setting_page.dart';
import 'package:paisa/features/transaction/presentation/pages/transaction_page.dart';
import 'package:paisa/main.dart';
import 'package:paisa/core/in_app.dart';
import 'package:paisa/features/intro/intro_page.dart';
import 'package:paisa/features/intro/user_onboarding_page.dart';
import 'package:paisa/features/home/presentation/controller/summary_controller.dart';
import 'package:provider/provider.dart';

final Box<dynamic> settings = Hive.box(BoxType.settings.name);

final GoRouter goRouter = GoRouter(
  initialLocation: introPagePath,
  observers: <NavigatorObserver>[HeroController()],
  refreshListenable: settings.listenable(),
  debugLogDiagnostics: true,
  routes: <RouteBase>[
    GoRoute(
      name: introPageName,
      path: introPagePath,
      builder: (BuildContext context, GoRouterState state) {
        return const IntroPage();
      },
    ),
    GoRoute(
      name: categorySelectorName,
      path: categorySelectorPath,
      builder: (BuildContext context, GoRouterState state) =>
          const CategorySelectorPage(),
    ),
    GoRoute(
      name: accountSelectorName,
      path: accountSelectorPath,
      builder: (BuildContext context, GoRouterState state) =>
          const AccountSelectorPage(),
    ),
    GoRoute(
      name: userOnboardingName,
      path: userOnboardingPath,
      builder: (BuildContext context, GoRouterState state) =>
          UserOnboardingPage(settings: settings),
    ),
    GoRoute(
      name: loginName,
      path: loginPath,
      builder: (BuildContext context, GoRouterState state) =>
          const Center(child: CircularProgressIndicator()),
    ),
    GoRoute(
      name: countrySelectorName,
      path: countrySelectorPath,
      builder: (BuildContext context, GoRouterState state) {
        final String? forceCountrySelector =
            state.queryParameters['force_country_selector'];
        return BlocProvider<CountryPickerCubit>(
          create: (BuildContext context) => getIt.get<CountryPickerCubit>(),
          child: CountryPickerPage(
            forceCountrySelector: forceCountrySelector == 'true',
          ),
        );
      },
    ),
    GoRoute(
      name: biometricName,
      path: biometricPath,
      builder: (BuildContext context, GoRouterState state) =>
          const BiometricPage(),
    ),
    GoRoute(
      name: landingName,
      path: landingPath,
      builder: (BuildContext context, GoRouterState state) =>
          LandingPage(inApp: getIt.get<InApp>()),
      routes: [
        GoRoute(
          path: addTransactionPath,
          name: addTransactionsName,
          pageBuilder: (BuildContext context, GoRouterState state) {
            final String? transactionTypeString = state.queryParameters['type'];
            final String? accountId = state.queryParameters['aid'];
            final String? categoryId = state.queryParameters['cid'];
            final int typeInt = int.tryParse(transactionTypeString ?? '') ?? 0;
            final TransactionType transactionType =
                TransactionType.values[typeInt];
            return MaterialPage<dynamic>(
              key: ValueKey<String>(state.location),
              child: TransactionPage(
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
          pageBuilder: (BuildContext context, GoRouterState state) {
            return MaterialPage<dynamic>(
              key: ValueKey<String>(state.location),
              child: TransactionPage(
                expenseId: state.pathParameters['eid'],
              ),
            );
          },
        ),
        GoRoute(
          name: addCategoryName,
          path: addCategoryPath,
          builder: (BuildContext context, GoRouterState state) {
            return const AddCategoryPage();
          },
          routes: [
            GoRoute(
              path: iconPickerPath,
              name: iconPickerName,
              builder: (BuildContext context, GoRouterState state) {
                return const CategoryIconPickerPage();
              },
            )
          ],
        ),
        GoRoute(
          name: editCategoryName,
          path: editCategoryPath,
          builder: (BuildContext context, GoRouterState state) {
            return AddCategoryPage(
              categoryId: state.pathParameters['cid'],
            );
          },
        ),
        GoRoute(
          name: manageCategoriesName,
          path: manageCategoriesPath,
          builder: (BuildContext context, GoRouterState state) {
            return const CategoryListPage();
          },
        ),
        GoRoute(
          name: addAccountName,
          path: addAccountPath,
          builder: (BuildContext context, GoRouterState state) {
            return const AddAccountPage();
          },
        ),
        GoRoute(
          name: editAccountName,
          path: editAccountPath,
          builder: (BuildContext context, GoRouterState state) {
            return AddAccountPage(
              accountId: state.pathParameters['aid'],
            );
          },
        ),
        GoRoute(
          name: accountTransactionName,
          path: accountTransactionPath,
          builder: (BuildContext context, GoRouterState state) {
            final String accountId = state.pathParameters['aid'] as String;
            return AccountTransactionsPage(
              accountId: accountId,
              summaryController: Provider.of<SummaryController>(context),
            );
          },
          routes: [
            GoRoute(
              name: editAccountWithIdName,
              path: editAccountWithIdPath,
              builder: (BuildContext context, GoRouterState state) {
                final String? accountId = state.pathParameters['aid'];
                return AddAccountPage(
                  accountId: accountId,
                );
              },
            ),
            GoRoute(
              path: addAccountWithIdPath,
              name: addAccountWithIdName,
              pageBuilder: (BuildContext context, GoRouterState state) {
                final String? transactionTypeString =
                    state.queryParameters['type'];
                final String? accountId = state.queryParameters['aid'];
                final int typeInt =
                    int.tryParse(transactionTypeString ?? '') ?? 0;
                final TransactionType transactionType =
                    TransactionType.values[typeInt];
                return MaterialPage<dynamic>(
                  key: ValueKey<String>(state.location),
                  child: TransactionPage(
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
          builder: (BuildContext context, GoRouterState state) {
            return TransactionByCategoryListPage(
              categoryId: state.pathParameters['cid'] as String,
              summaryController: Provider.of<SummaryController>(context),
            );
          },
        ),
        GoRoute(
          name: addDebitName,
          path: addDebitPath,
          builder: (BuildContext context, GoRouterState state) {
            return const AddOrEditDebtPage();
          },
        ),
        GoRoute(
          name: debtAddOrEditName,
          path: debtAddOrEditPath,
          builder: (BuildContext context, GoRouterState state) {
            return AddOrEditDebtPage(
              debtId: state.pathParameters['did'],
            );
          },
        ),
        GoRoute(
          name: searchName,
          path: searchPath,
          builder: (BuildContext context, GoRouterState state) {
            return const SearchPage();
          },
        ),
        GoRoute(
          name: recurringTransactionsName,
          path: recurringTransactionsPath,
          builder: (BuildContext context, GoRouterState state) {
            return const RecurringPage();
          },
          routes: [
            GoRoute(
              name: recurringName,
              path: recurringPath,
              builder: (BuildContext context, GoRouterState state) {
                return const AddRecurringPage();
              },
            ),
          ],
        ),
        GoRoute(
          name: settingsName,
          path: settingsPath,
          builder: (BuildContext context, GoRouterState state) {
            return SettingsPage(settings: settings);
          },
          routes: [
            GoRoute(
              name: exportAndImportName,
              path: exportAndImportPath,
              builder: (BuildContext context, GoRouterState state) {
                return const ExportAndImportPage();
              },
            ),
          ],
        ),
      ],
    ),
  ],
  errorBuilder: (BuildContext context, GoRouterState state) {
    return Center(
      child: Text(state.error.toString()),
    );
  },
  redirect: (_, GoRouterState state) async {
    final bool isLogging = state.location == introPagePath;
    bool isIntroDone = settings.get(userIntroKey, defaultValue: false);
    if (!isIntroDone) {
      return introPagePath;
    }
    final String name = settings.get(userNameKey, defaultValue: '');
    if (name.isEmpty && isLogging) {
      return userOnboardingPath;
    }
    final String image = settings.get(userImageKey, defaultValue: '');
    if (image.isEmpty && isLogging) {
      return userOnboardingPath;
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
      return countrySelectorPath;
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
