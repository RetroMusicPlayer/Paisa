// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:go_router/go_router.dart';
import 'package:hive_flutter/adapters.dart';

// Project imports:
import 'package:paisa/core/common.dart';
import 'package:paisa/core/common_enum.dart';
import 'package:paisa/features/account/presentation/pages/add/add_account_page.dart';
import 'package:paisa/features/category/presentation/pages/add/add_category_page.dart';
import 'package:paisa/features/category/presentation/pages/category_icon_picker_page.dart';
import 'package:paisa/features/debit/presentation/pages/add/add_debit_page.dart';
import 'package:paisa/features/home/presentation/pages/home/home_page.dart';
import 'package:paisa/features/intro/presentation/pages/biometric_page.dart';
import 'package:paisa/features/intro/presentation/pages/intro_page.dart';
import 'package:paisa/features/intro/presentation/pages/user_onboarding_page.dart';
import 'package:paisa/features/overview/presentation/transactions_by_category_list_page.dart';
import 'package:paisa/features/recurring/presentation/page/add_recurring_page.dart';
import 'package:paisa/features/recurring/presentation/page/recurring_page.dart';
import 'package:paisa/features/search/presentation/pages/search_page.dart';
import 'package:paisa/features/settings/presentation/pages/app_language_changer_page.dart';
import 'package:paisa/features/settings/presentation/pages/export_and_import_page.dart';
import 'package:paisa/features/settings/presentation/pages/font_picker_page.dart';
import 'package:paisa/features/settings/presentation/pages/setting_page.dart';
import 'package:paisa/features/transaction/presentation/pages/transaction_page.dart';

part 'routes.g.dart';

final Box<dynamic> settings = Hive.box(BoxType.settings.name);

final GoRouter goRouter = GoRouter(
  initialLocation: const IntroRouterData().location,
  refreshListenable: settings.listenable(),
  debugLogDiagnostics: true,
  observers: [
    HeroController(),
  ],
  routes: $appRoutes,
  errorBuilder: (c, s) => ErrorRoute(error: s.error!).build(c, s),
  redirect: (context, state) {
    final bool isLogging =
        state.matchedLocation == const IntroRouterData().location;
    bool isIntroDone = settings.get(userIntroKey, defaultValue: false);
    if (!isIntroDone) {
      return const IntroRouterData().location;
    }
    final String name = settings.get(userNameKey, defaultValue: '');
    if (name.isEmpty && isLogging) {
      return UserOnboardingPageData().location;
    }
    final String image = settings.get(userImageKey, defaultValue: '');
    if (image.isEmpty && isLogging) {
      return UserOnboardingPageData().location;
    }
    final bool categorySelectorDone = settings.get(
      userCategorySelectorKey,
      defaultValue: true,
    );
    if (categorySelectorDone && isLogging) {
      return UserOnboardingPageData().location;
    }

    final bool accountSelectorDone = settings.get(
      userAccountSelectorKey,
      defaultValue: true,
    );
    if (accountSelectorDone && isLogging) {
      return UserOnboardingPageData().location;
    }

    final Map<dynamic, dynamic>? json = settings.get(userCountryKey);
    if (json == null && isLogging) {
      return UserOnboardingPageData(forceCountrySelector: true).location;
    }

    final isBiometricEnabled = settings.get(userAuthKey, defaultValue: false);
    if (isBiometricEnabled &&
        name.isNotEmpty &&
        image.isNotEmpty &&
        isLogging) {
      return const BiometricPageData().location;
    } else if (name.isNotEmpty && image.isNotEmpty && isLogging) {
      return const LandingPageData().location;
    }

    return null;
  },
);

class ErrorRoute extends GoRouteData {
  ErrorRoute({required this.error});

  final Exception error;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return Center(
      child: Text(state.error!.toString()),
    );
  }
}

@TypedGoRoute<LoginPageData>(
  path: '/login',
  name: 'login',
)
class LoginPageData extends GoRouteData {
  const LoginPageData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const Center(child: CircularProgressIndicator());
  }
}

@TypedGoRoute<IntroRouterData>(
  path: '/intro',
  name: 'intro',
)
class IntroRouterData extends GoRouteData {
  const IntroRouterData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const IntroPage();
  }
}

@TypedGoRoute<UserOnboardingPageData>(
  path: '/onboarding',
  name: 'onboarding',
)
class UserOnboardingPageData extends GoRouteData {
  UserOnboardingPageData({this.forceCountrySelector = false});

  final bool forceCountrySelector;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return UserOnboardingPage(
      forceCountrySelector: forceCountrySelector,
    );
  }
}

@TypedGoRoute<BiometricPageData>(
  path: '/biometric',
  name: 'biometric',
)
class BiometricPageData extends GoRouteData {
  const BiometricPageData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const BiometricPage();
  }
}

@TypedGoRoute<LandingPageData>(
  path: '/landing',
  routes: <TypedGoRoute<GoRouteData>>[
    TypedGoRoute<SearchPageData>(
      path: 'search',
    ),
    TypedGoRoute<DebitPageData>(
      path: 'debit',
    ),
    TypedGoRoute<TransactionPageData>(
      path: 'transaction',
    ),
    TypedGoRoute<AccountPageData>(
      path: 'account',
    ),
    TypedGoRoute<RecurringPageData>(
      path: 'recurring',
      routes: [
        TypedGoRoute<AddRecurringPageData>(
          path: 'add',
        ),
      ],
    ),
    TypedGoRoute<ExportAndImportPageData>(
      path: 'export',
    ),
    TypedGoRoute<SettingsPageData>(
      path: 'settings',
      routes: <TypedGoRoute<GoRouteData>>[
        TypedGoRoute<FontPickerPageData>(
          path: 'font-picker',
        ),
        TypedGoRoute<AppLanguageChangerPageData>(
          path: 'language-picker',
        ),
      ],
    ),
    TypedGoRoute<CategoryPageData>(
      path: 'category',
      routes: <TypedGoRoute<GoRouteData>>[
        TypedGoRoute<CategoryIconPickerPageData>(
          path: 'icon-picker',
        ),
      ],
    ),
    TypedGoRoute<TransactionsByCategoryPageData>(
      path: 'transactions/:categoryId',
    ),
  ],
)
class LandingPageData extends GoRouteData {
  const LandingPageData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const LandingPage();
  }
}

class TransactionPageData extends GoRouteData {
  const TransactionPageData({
    this.accountId,
    this.categoryId,
    this.transactionId,
    this.transactionType,
  });

  final int? accountId;
  final int? categoryId;
  final int? transactionId;
  final TransactionType? transactionType;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return TransactionPage(
      transactionType: transactionType,
      accountId: accountId,
      categoryId: categoryId,
      transactionId: transactionId,
    );
  }
}

class AccountPageData extends GoRouteData {
  const AccountPageData({this.accountId});

  final int? accountId;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return AccountPage(accountId: accountId);
  }
}

class CategoryPageData extends GoRouteData {
  const CategoryPageData({this.categoryId});

  final int? categoryId;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return CategoryPage(categoryId: categoryId);
  }
}

class CategoryIconPickerPageData extends GoRouteData {
  const CategoryIconPickerPageData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const CategoryIconPickerPage();
  }
}

class SettingsPageData extends GoRouteData {
  const SettingsPageData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const SettingsPage();
  }
}

class SearchPageData extends GoRouteData {
  const SearchPageData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const SearchPage();
  }
}

class DebitPageData extends GoRouteData {
  const DebitPageData({this.debtId});

  final int? debtId;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return DebitPage(debtId: debtId);
  }
}

class RecurringPageData extends GoRouteData {
  const RecurringPageData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const RecurringPage();
  }
}

class AddRecurringPageData extends GoRouteData {
  const AddRecurringPageData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const AddRecurringPageData().build(context, state);
  }
}

class FontPickerPageData extends GoRouteData {
  const FontPickerPageData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return FontPickerPage(
      currentFont: settings.get(
        appFontChangerKey,
        defaultValue: 'Outfit',
      ),
    );
  }
}

class AppLanguageChangerPageData extends GoRouteData {
  const AppLanguageChangerPageData({this.currentLanguage});

  final String? currentLanguage;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return AppLanguageChangerPage(currentLanguage: currentLanguage);
  }
}

class ExportAndImportPageData extends GoRouteData {
  const ExportAndImportPageData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const ExportAndImportPage();
  }
}

class TransactionsByCategoryPageData extends GoRouteData {
  const TransactionsByCategoryPageData(this.categoryId);

  final int categoryId;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return TransactionByCategoryPage(categoryId: categoryId);
  }
}

class TransactionsByAccountPageData extends GoRouteData {
  const TransactionsByAccountPageData(this.accountId);

  final int accountId;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return AccountPage(accountId: accountId);
  }
}
/* 
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
          const UserOnboardingPage(),
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
            state.uri.queryParameters['force_country_selector'];
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
          builder: (context, state) {
            final String? transactionTypeString =
                state.uri.queryParameters['type'];
            final String? accountId = state.uri.queryParameters['aid'];
            final String? categoryId = state.uri.queryParameters['cid'];
            final int typeInt = int.tryParse(transactionTypeString ?? '') ?? 0;
            final TransactionType transactionType =
                TransactionType.values[typeInt];
            return TransactionPage(
              accountId: accountId,
              categoryId: categoryId,
              transactionType: transactionType,
            );
          },
        ),
        GoRoute(
          name: editTransactionsName,
          path: editTransactionsPath,
          builder: (context, state) {
            return TransactionPage(
              expenseId: state.pathParameters['eid'],
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
              builder: (context, state) {
                final String? transactionTypeString =
                    state.uri.queryParameters['type'];
                final String? accountId = state.uri.queryParameters['aid'];
                final int typeInt =
                    int.tryParse(transactionTypeString ?? '') ?? 0;
                final TransactionType transactionType =
                    TransactionType.values[typeInt];
                return TransactionPage(
                  accountId: accountId,
                  transactionType: transactionType,
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
            return const AddOrEditDebitPage();
          },
        ),
        GoRoute(
          name: debtAddOrEditName,
          path: debtAddOrEditPath,
          builder: (BuildContext context, GoRouterState state) {
            return AddOrEditDebitPage(
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
            return const SettingsPage();
          },
          routes: [
            GoRoute(
              name: exportAndImportName,
              path: exportAndImportPath,
              builder: (BuildContext context, GoRouterState state) {
                return const ExportAndImportPage();
              },
            ),
            GoRoute(
              name: fontPickerName,
              path: fontPickerPath,
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
    final bool isLogging = state.matchedLocation == introPagePath;
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
 */
