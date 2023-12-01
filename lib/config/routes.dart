import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:paisa/config/routes_name.dart';
import 'package:paisa/core/common.dart';
import 'package:paisa/core/common_enum.dart';
import 'package:paisa/features/account/presentation/bloc/accounts_bloc.dart';
import 'package:paisa/features/account/presentation/pages/account_transactions_page.dart';
import 'package:paisa/features/account/presentation/pages/add/add_account_page.dart';
import 'package:paisa/features/category/presentation/bloc/category_bloc.dart';
import 'package:paisa/features/category/presentation/pages/add/add_category_page.dart';
import 'package:paisa/features/category/presentation/pages/category_icon_picker_page.dart';
import 'package:paisa/features/debit/presentation/pages/add/add_debit_page.dart';
import 'package:paisa/features/home/presentation/pages/home/home_page.dart';
import 'package:paisa/features/home/presentation/pages/overview/transactions_by_category_list_page.dart';
import 'package:paisa/features/intro/presentation/pages/biometric_page.dart';
import 'package:paisa/features/recurring/presentation/page/add_recurring_page.dart';
import 'package:paisa/features/search/presentation/pages/search_page.dart';
import 'package:paisa/features/settings/presentation/pages/app_language_changer_page.dart';
import 'package:paisa/features/settings/presentation/pages/export_and_import_page.dart';
import 'package:paisa/features/settings/presentation/pages/font_picker_page.dart';
import 'package:paisa/features/settings/presentation/pages/setting_page.dart';
import 'package:paisa/features/transaction/presentation/bloc/transaction_bloc.dart';
import 'package:paisa/features/transaction/presentation/pages/transaction_page.dart';
import 'package:paisa/features/intro/intro_page.dart';
import 'package:paisa/features/intro/user_onboarding_page.dart';
import 'package:paisa/features/home/presentation/controller/summary_controller.dart';
import 'package:paisa/main.dart';
import 'package:provider/provider.dart';

final Box<dynamic> settings = Hive.box(BoxType.settings.name);

final GoRouter goRouter = GoRouter(
  initialLocation: RoutesName.intro.path,
  observers: <NavigatorObserver>[HeroController()],
  refreshListenable: settings.listenable(),
  debugLogDiagnostics: true,
  routes: <RouteBase>[
    GoRoute(
      name: RoutesName.login.name,
      path: RoutesName.login.path,
      builder: (BuildContext context, GoRouterState state) =>
          const Center(child: CircularProgressIndicator()),
    ),
    GoRoute(
      name: RoutesName.intro.name,
      path: RoutesName.intro.path,
      builder: (BuildContext context, GoRouterState state) {
        return const IntroPage();
      },
    ),
    GoRoute(
      name: RoutesName.userOnboarding.name,
      path: RoutesName.userOnboarding.path,
      builder: (BuildContext context, GoRouterState state) {
        final String? forceCountrySelector =
            state.uri.queryParameters['force_country_selector'];
        return UserOnboardingPage(
          forceCountrySelector: forceCountrySelector == 'true',
        );
      },
    ),
    GoRoute(
      name: RoutesName.biometric.name,
      path: RoutesName.biometric.path,
      builder: (BuildContext context, GoRouterState state) =>
          const BiometricPage(),
    ),
    GoRoute(
      name: RoutesName.landing.name,
      path: RoutesName.landing.path,
      builder: (BuildContext context, GoRouterState state) =>
          const LandingPage(),
      routes: [
        GoRoute(
          name: RoutesName.addTransaction.name,
          path: RoutesName.addTransaction.path,
          builder: (context, state) {
            final String? transactionTypeString =
                state.uri.queryParameters['type'];
            final String? accountId = state.uri.queryParameters['aid'];
            final String? categoryId = state.uri.queryParameters['cid'];
            final int typeInt = int.tryParse(transactionTypeString ?? '') ?? 0;
            final TransactionType transactionType =
                TransactionType.values[typeInt];
            return BlocProvider(
              create: (context) => getIt.get<TransactionBloc>(),
              child: TransactionPage(
                accountId: accountId,
                categoryId: categoryId,
                transactionType: transactionType,
              ),
            );
          },
        ),
        GoRoute(
          name: RoutesName.editTransaction.name,
          path: RoutesName.editTransaction.path,
          builder: (context, state) {
            return BlocProvider(
              create: (context) => getIt.get<TransactionBloc>(),
              child: TransactionPage(
                expenseId: state.pathParameters['eid'],
              ),
            );
          },
        ),
        GoRoute(
          name: RoutesName.addCategory.name,
          path: RoutesName.addCategory.path,
          builder: (BuildContext context, GoRouterState state) {
            return BlocProvider(
              create: (context) => getIt.get<CategoryBloc>(),
              child: const AddCategoryPage(),
            );
          },
          routes: [
            GoRoute(
              name: RoutesName.iconPicker.name,
              path: RoutesName.iconPicker.path,
              builder: (BuildContext context, GoRouterState state) {
                return const CategoryIconPickerPage();
              },
            )
          ],
        ),
        GoRoute(
          name: RoutesName.editCategory.name,
          path: RoutesName.editCategory.path,
          builder: (BuildContext context, GoRouterState state) {
            return BlocProvider(
              create: (context) => getIt.get<CategoryBloc>(),
              child: AddCategoryPage(
                categoryId: state.pathParameters['cid'],
              ),
            );
          },
        ),
        GoRoute(
          name: RoutesName.addAccount.name,
          path: RoutesName.addAccount.path,
          builder: (BuildContext context, GoRouterState state) {
            return BlocProvider(
              create: (context) => getIt.get<AccountBloc>(),
              child: const AddAccountPage(),
            );
          },
        ),
        GoRoute(
          name: RoutesName.editAccount.name,
          path: RoutesName.editAccount.path,
          builder: (BuildContext context, GoRouterState state) {
            return BlocProvider(
              create: (context) => getIt.get<AccountBloc>(),
              child: AddAccountPage(
                accountId: state.pathParameters['aid'],
              ),
            );
          },
        ),
        GoRoute(
          name: RoutesName.accountTransactions.name,
          path: RoutesName.accountTransactions.path,
          builder: (BuildContext context, GoRouterState state) {
            final String accountId = state.pathParameters['aid'] as String;
            return AccountTransactionsPage(
              accountId: accountId,
              summaryController: Provider.of<SummaryController>(
                context,
                listen: false,
              ),
            );
          },
          routes: [
            GoRoute(
              name: RoutesName.accountEditTransaction.name,
              path: RoutesName.accountEditTransaction.path,
              builder: (BuildContext context, GoRouterState state) {
                final String? transactionId = state.pathParameters['eid'];
                final String? accountId = state.pathParameters['aid'];
                return BlocProvider(
                  create: (context) => getIt.get<AccountBloc>(),
                  child: BlocProvider(
                    create: (context) => getIt.get<TransactionBloc>(),
                    child: TransactionPage(
                      expenseId: transactionId,
                      accountId: accountId,
                    ),
                  ),
                );
              },
            ),
            GoRoute(
              name: RoutesName.accountTransactionsEditAccount.name,
              path: RoutesName.accountTransactionsEditAccount.path,
              builder: (BuildContext context, GoRouterState state) {
                final String? accountId = state.pathParameters['aid'];
                return BlocProvider(
                  create: (context) => getIt.get<AccountBloc>(),
                  child: AddAccountPage(accountId: accountId),
                );
              },
            ),
            GoRoute(
              name: RoutesName.accountAddTransaction.name,
              path: RoutesName.accountAddTransaction.path,
              builder: (context, state) {
                final String? transactionTypeString =
                    state.uri.queryParameters['type'];
                final String? accountId = state.uri.queryParameters['aid'];
                final int typeInt =
                    int.tryParse(transactionTypeString ?? '') ?? 0;
                final TransactionType transactionType =
                    TransactionType.values[typeInt];
                return BlocProvider(
                  create: (context) => getIt.get<TransactionBloc>(),
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
          name: RoutesName.transactionsByCategory.name,
          path: RoutesName.transactionsByCategory.path,
          builder: (BuildContext context, GoRouterState state) {
            return TransactionByCategoryListPage(
              categoryId: state.pathParameters['cid'] as String,
              summaryController: Provider.of<SummaryController>(context),
            );
          },
        ),
        GoRoute(
          name: RoutesName.addDebtCredit.name,
          path: RoutesName.addDebtCredit.path,
          builder: (BuildContext context, GoRouterState state) {
            return const AddOrEditDebitPage();
          },
        ),
        GoRoute(
          name: RoutesName.editDebitCredit.name,
          path: RoutesName.editDebitCredit.path,
          builder: (BuildContext context, GoRouterState state) {
            return AddOrEditDebitPage(
              debtId: state.pathParameters['did'],
            );
          },
        ),
        GoRoute(
          name: RoutesName.search.name,
          path: RoutesName.search.path,
          builder: (BuildContext context, GoRouterState state) {
            return const SearchPage();
          },
        ),
        GoRoute(
          name: RoutesName.addRecurring.name,
          path: RoutesName.addRecurring.path,
          builder: (BuildContext context, GoRouterState state) {
            return const AddRecurringPage();
          },
        ),
        GoRoute(
          name: RoutesName.settings.name,
          path: RoutesName.settings.path,
          builder: (BuildContext context, GoRouterState state) {
            return const SettingsPage();
          },
          routes: [
            GoRoute(
              name: RoutesName.exportAndImport.name,
              path: RoutesName.exportAndImport.path,
              builder: (BuildContext context, GoRouterState state) {
                return const ExportAndImportPage();
              },
            ),
            GoRoute(
              name: RoutesName.appLanguageChanger.name,
              path: RoutesName.appLanguageChanger.path,
              builder: (BuildContext context, GoRouterState state) {
                return AppLanguageChangerPage(
                  currentLanguage: settings.get(
                    appLanguageKey,
                    defaultValue: 'en',
                  ),
                );
              },
            ),
            GoRoute(
              name: RoutesName.appFontChanger.name,
              path: RoutesName.appFontChanger.path,
              builder: (BuildContext context, GoRouterState state) {
                return FontPickerPage(
                  currentFont: settings.get(
                    appFontChangerKey,
                    defaultValue: 'Outfit',
                  ),
                );
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
    final bool isLogging = state.matchedLocation == RoutesName.intro.path;
    bool isIntroDone = settings.get(userIntroKey, defaultValue: false);
    if (!isIntroDone) {
      return RoutesName.intro.path;
    }
    final String name = settings.get(userNameKey, defaultValue: '');
    if (name.isEmpty && isLogging) {
      return RoutesName.userOnboarding.path;
    }
    final String image = settings.get(userImageKey, defaultValue: '');
    if (image.isEmpty && isLogging) {
      return RoutesName.userOnboarding.path;
    }

    final bool categorySelectorDone = settings.get(
      userCategorySelectorKey,
      defaultValue: true,
    );
    if (categorySelectorDone && isLogging) {
      return RoutesName.userOnboarding.path;
    }

    final bool accountSelectorDone = settings.get(
      userAccountSelectorKey,
      defaultValue: true,
    );
    if (accountSelectorDone && isLogging) {
      return RoutesName.userOnboarding.path;
    }

    final Map<dynamic, dynamic>? json = settings.get(userCountryKey);
    if (json == null && isLogging) {
      return RoutesName.userOnboarding.path;
    }

    final isBiometricEnabled = settings.get(userAuthKey, defaultValue: false);
    if (isBiometricEnabled &&
        name.isNotEmpty &&
        image.isNotEmpty &&
        isLogging) {
      return RoutesName.biometric.path;
    } else if (name.isNotEmpty && image.isNotEmpty && isLogging) {
      return RoutesName.landing.path;
    }
    return null;
  },
);
