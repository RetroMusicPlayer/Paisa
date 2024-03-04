// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $loginPageData,
      $introRouterData,
      $userOnboardingPageData,
      $biometricPageData,
      $landingPageData,
    ];

RouteBase get $loginPageData => GoRouteData.$route(
      path: '/login',
      name: 'login',
      factory: $LoginPageDataExtension._fromState,
    );

extension $LoginPageDataExtension on LoginPageData {
  static LoginPageData _fromState(GoRouterState state) => const LoginPageData();

  String get location => GoRouteData.$location(
        '/login',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $introRouterData => GoRouteData.$route(
      path: '/intro',
      name: 'intro',
      factory: $IntroRouterDataExtension._fromState,
    );

extension $IntroRouterDataExtension on IntroRouterData {
  static IntroRouterData _fromState(GoRouterState state) =>
      const IntroRouterData();

  String get location => GoRouteData.$location(
        '/intro',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $userOnboardingPageData => GoRouteData.$route(
      path: '/onboarding',
      name: 'onboarding',
      factory: $UserOnboardingPageDataExtension._fromState,
    );

extension $UserOnboardingPageDataExtension on UserOnboardingPageData {
  static UserOnboardingPageData _fromState(GoRouterState state) =>
      UserOnboardingPageData(
        forceCountrySelector: _$convertMapValue('force-country-selector',
                state.uri.queryParameters, _$boolConverter) ??
            false,
      );

  String get location => GoRouteData.$location(
        '/onboarding',
        queryParams: {
          if (forceCountrySelector != false)
            'force-country-selector': forceCountrySelector.toString(),
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

T? _$convertMapValue<T>(
  String key,
  Map<String, String> map,
  T Function(String) converter,
) {
  final value = map[key];
  return value == null ? null : converter(value);
}

bool _$boolConverter(String value) {
  switch (value) {
    case 'true':
      return true;
    case 'false':
      return false;
    default:
      throw UnsupportedError('Cannot convert "$value" into a bool.');
  }
}

RouteBase get $biometricPageData => GoRouteData.$route(
      path: '/biometric',
      name: 'biometric',
      factory: $BiometricPageDataExtension._fromState,
    );

extension $BiometricPageDataExtension on BiometricPageData {
  static BiometricPageData _fromState(GoRouterState state) =>
      const BiometricPageData();

  String get location => GoRouteData.$location(
        '/biometric',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $landingPageData => GoRouteData.$route(
      path: '/landing',
      factory: $LandingPageDataExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'search',
          factory: $SearchPageDataExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'debit',
          factory: $DebitPageDataExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'transaction',
          factory: $TransactionPageDataExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'account',
          factory: $AccountPageDataExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'recurring',
          factory: $RecurringPageDataExtension._fromState,
          routes: [
            GoRouteData.$route(
              path: 'add',
              factory: $AddRecurringPageDataExtension._fromState,
            ),
          ],
        ),
        GoRouteData.$route(
          path: 'export',
          factory: $ExportAndImportPageDataExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'settings',
          factory: $SettingsPageDataExtension._fromState,
          routes: [
            GoRouteData.$route(
              path: 'font-picker',
              factory: $FontPickerPageDataExtension._fromState,
            ),
            GoRouteData.$route(
              path: 'language-picker',
              factory: $AppLanguageChangerPageDataExtension._fromState,
            ),
          ],
        ),
        GoRouteData.$route(
          path: 'category',
          factory: $CategoryPageDataExtension._fromState,
          routes: [
            GoRouteData.$route(
              path: 'icon-picker',
              factory: $CategoryIconPickerPageDataExtension._fromState,
            ),
          ],
        ),
        GoRouteData.$route(
          path: 'transactions/:categoryId',
          factory: $TransactionsByCategoryPageDataExtension._fromState,
        ),
      ],
    );

extension $LandingPageDataExtension on LandingPageData {
  static LandingPageData _fromState(GoRouterState state) =>
      const LandingPageData();

  String get location => GoRouteData.$location(
        '/landing',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SearchPageDataExtension on SearchPageData {
  static SearchPageData _fromState(GoRouterState state) =>
      const SearchPageData();

  String get location => GoRouteData.$location(
        '/landing/search',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $DebitPageDataExtension on DebitPageData {
  static DebitPageData _fromState(GoRouterState state) => DebitPageData(
        debtId:
            _$convertMapValue('debt-id', state.uri.queryParameters, int.parse),
      );

  String get location => GoRouteData.$location(
        '/landing/debit',
        queryParams: {
          if (debtId != null) 'debt-id': debtId!.toString(),
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $TransactionPageDataExtension on TransactionPageData {
  static TransactionPageData _fromState(GoRouterState state) =>
      TransactionPageData(
        accountId: _$convertMapValue(
            'account-id', state.uri.queryParameters, int.parse),
        categoryId: _$convertMapValue(
            'category-id', state.uri.queryParameters, int.parse),
        transactionId: _$convertMapValue(
            'transaction-id', state.uri.queryParameters, int.parse),
        transactionType: _$convertMapValue('transaction-type',
            state.uri.queryParameters, _$TransactionTypeEnumMap._$fromName),
      );

  String get location => GoRouteData.$location(
        '/landing/transaction',
        queryParams: {
          if (accountId != null) 'account-id': accountId!.toString(),
          if (categoryId != null) 'category-id': categoryId!.toString(),
          if (transactionId != null)
            'transaction-id': transactionId!.toString(),
          if (transactionType != null)
            'transaction-type': _$TransactionTypeEnumMap[transactionType!],
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

const _$TransactionTypeEnumMap = {
  TransactionType.expense: 'expense',
  TransactionType.income: 'income',
  TransactionType.transfer: 'transfer',
};

extension $AccountPageDataExtension on AccountPageData {
  static AccountPageData _fromState(GoRouterState state) => AccountPageData(
        accountId: _$convertMapValue(
            'account-id', state.uri.queryParameters, int.parse),
      );

  String get location => GoRouteData.$location(
        '/landing/account',
        queryParams: {
          if (accountId != null) 'account-id': accountId!.toString(),
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $RecurringPageDataExtension on RecurringPageData {
  static RecurringPageData _fromState(GoRouterState state) =>
      const RecurringPageData();

  String get location => GoRouteData.$location(
        '/landing/recurring',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $AddRecurringPageDataExtension on AddRecurringPageData {
  static AddRecurringPageData _fromState(GoRouterState state) =>
      const AddRecurringPageData();

  String get location => GoRouteData.$location(
        '/landing/recurring/add',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ExportAndImportPageDataExtension on ExportAndImportPageData {
  static ExportAndImportPageData _fromState(GoRouterState state) =>
      const ExportAndImportPageData();

  String get location => GoRouteData.$location(
        '/landing/export',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SettingsPageDataExtension on SettingsPageData {
  static SettingsPageData _fromState(GoRouterState state) =>
      const SettingsPageData();

  String get location => GoRouteData.$location(
        '/landing/settings',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $FontPickerPageDataExtension on FontPickerPageData {
  static FontPickerPageData _fromState(GoRouterState state) =>
      const FontPickerPageData();

  String get location => GoRouteData.$location(
        '/landing/settings/font-picker',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $AppLanguageChangerPageDataExtension on AppLanguageChangerPageData {
  static AppLanguageChangerPageData _fromState(GoRouterState state) =>
      AppLanguageChangerPageData(
        currentLanguage: state.uri.queryParameters['current-language'],
      );

  String get location => GoRouteData.$location(
        '/landing/settings/language-picker',
        queryParams: {
          if (currentLanguage != null) 'current-language': currentLanguage,
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $CategoryPageDataExtension on CategoryPageData {
  static CategoryPageData _fromState(GoRouterState state) => CategoryPageData(
        categoryId: _$convertMapValue(
            'category-id', state.uri.queryParameters, int.parse),
      );

  String get location => GoRouteData.$location(
        '/landing/category',
        queryParams: {
          if (categoryId != null) 'category-id': categoryId!.toString(),
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $CategoryIconPickerPageDataExtension on CategoryIconPickerPageData {
  static CategoryIconPickerPageData _fromState(GoRouterState state) =>
      const CategoryIconPickerPageData();

  String get location => GoRouteData.$location(
        '/landing/category/icon-picker',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $TransactionsByCategoryPageDataExtension
    on TransactionsByCategoryPageData {
  static TransactionsByCategoryPageData _fromState(GoRouterState state) =>
      TransactionsByCategoryPageData(
        int.parse(state.pathParameters['categoryId']!),
      );

  String get location => GoRouteData.$location(
        '/landing/transactions/${Uri.encodeComponent(categoryId.toString())}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension<T extends Enum> on Map<T, String> {
  T _$fromName(String value) =>
      entries.singleWhere((element) => element.value == value).key;
}
