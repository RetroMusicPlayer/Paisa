// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:device_info_plus/device_info_plus.dart' as _i13;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hive_flutter/adapters.dart' as _i4;
import 'package:hive_flutter/hive_flutter.dart' as _i16;
import 'package:image_picker/image_picker.dart' as _i24;
import 'package:in_app_review/in_app_review.dart' as _i25;
import 'package:injectable/injectable.dart' as _i2;
import 'package:paisa/core/in_app.dart' as _i75;
import 'package:paisa/features/account/data/data_sources/local/account_data_manager.dart'
    as _i26;
import 'package:paisa/features/account/data/model/account_model.dart' as _i9;
import 'package:paisa/features/account/data/repository/account_repository_impl.dart'
    as _i43;
import 'package:paisa/features/account/domain/repository/account_repository.dart'
    as _i42;
import 'package:paisa/features/account/domain/use_case/account_use_case.dart'
    as _i73;
import 'package:paisa/features/account/domain/use_case/add_account_use_case.dart'
    as _i44;
import 'package:paisa/features/account/domain/use_case/delete_account_use_case.dart'
    as _i52;
import 'package:paisa/features/account/domain/use_case/get_account_use_case.dart'
    as _i64;
import 'package:paisa/features/account/domain/use_case/get_accounts_use_case.dart'
    as _i65;
import 'package:paisa/features/account/domain/use_case/update_account_use_case.dart'
    as _i85;
import 'package:paisa/features/account/presentation/bloc/accounts_bloc.dart'
    as _i88;
import 'package:paisa/features/category/data/data_sources/local/category_data_source.dart'
    as _i27;
import 'package:paisa/features/category/data/model/category_model.dart' as _i8;
import 'package:paisa/features/category/data/repository/category_repository_impl.dart'
    as _i48;
import 'package:paisa/features/category/domain/repository/category_repository.dart'
    as _i47;
import 'package:paisa/features/category/domain/use_case/add_category_use_case.dart'
    as _i89;
import 'package:paisa/features/category/domain/use_case/category_use_case.dart'
    as _i72;
import 'package:paisa/features/category/domain/use_case/delete_category_use_case.dart'
    as _i53;
import 'package:paisa/features/category/domain/use_case/get_category_use_case.dart'
    as _i66;
import 'package:paisa/features/category/domain/use_case/get_default_categories_use_case.dart'
    as _i69;
import 'package:paisa/features/category/domain/use_case/update_category_use_case.dart'
    as _i86;
import 'package:paisa/features/category/presentation/bloc/category_bloc.dart'
    as _i93;
import 'package:paisa/features/country_picker/data/repository/country_repository_impl.dart'
    as _i12;
import 'package:paisa/features/country_picker/domain/repository/country_repository.dart'
    as _i11;
import 'package:paisa/features/country_picker/domain/use_case/get_contries_user_case.dart'
    as _i19;
import 'package:paisa/features/country_picker/presentation/cubit/country_picker_cubit.dart'
    as _i49;
import 'package:paisa/features/debit/data/data_sources/local/debit_local_data_source_impl.dart'
    as _i28;
import 'package:paisa/features/debit/data/models/debit_model.dart' as _i7;
import 'package:paisa/features/debit/data/models/debit_transactions_model.dart'
    as _i6;
import 'package:paisa/features/debit/data/repository/debit_repository_impl.dart'
    as _i51;
import 'package:paisa/features/debit/domain/repository/debit_repository.dart'
    as _i50;
import 'package:paisa/features/debit/domain/use_case/add_debit_transaction_use_case.dart'
    as _i91;
import 'package:paisa/features/debit/domain/use_case/add_debit_use.case.dart'
    as _i90;
import 'package:paisa/features/debit/domain/use_case/debit_use_case.dart'
    as _i95;
import 'package:paisa/features/debit/domain/use_case/delete_debit_transaction_use_case.dart'
    as _i54;
import 'package:paisa/features/debit/domain/use_case/delete_debit_transactions_by_debit_id_use_case.dart'
    as _i55;
import 'package:paisa/features/debit/domain/use_case/delete_debit_use_case.dart'
    as _i56;
import 'package:paisa/features/debit/domain/use_case/get_debit_transactions_use_case.dart'
    as _i67;
import 'package:paisa/features/debit/domain/use_case/get_debit_use_case.dart'
    as _i68;
import 'package:paisa/features/debit/domain/use_case/update_debit_use.case.dart'
    as _i87;
import 'package:paisa/features/debit/presentation/cubit/debts_bloc.dart'
    as _i94;
import 'package:paisa/features/home/presentation/bloc/home/home_bloc.dart'
    as _i70;
import 'package:paisa/features/home/presentation/controller/summary_controller.dart'
    as _i39;
import 'package:paisa/features/home/presentation/cubit/overview/overview_cubit.dart'
    as _i78;
import 'package:paisa/features/profile/data/repository/profile_repository_impl.dart'
    as _i32;
import 'package:paisa/features/profile/domain/repository/profile_repository.dart'
    as _i31;
import 'package:paisa/features/profile/domain/use_case/image_picker_use_case.dart'
    as _i74;
import 'package:paisa/features/profile/domain/use_case/profile_use_case.dart'
    as _i80;
import 'package:paisa/features/profile/presentation/cubit/profile_cubit.dart'
    as _i79;
import 'package:paisa/features/recurring/data/data_sources/local_recurring_data_manager.dart'
    as _i29;
import 'package:paisa/features/recurring/data/data_sources/local_recurring_data_manager_impl.dart'
    as _i30;
import 'package:paisa/features/recurring/data/model/recurring.dart' as _i5;
import 'package:paisa/features/recurring/data/repository/recurring_repository_impl.dart'
    as _i34;
import 'package:paisa/features/recurring/domain/repository/recurring_repository.dart'
    as _i33;
import 'package:paisa/features/recurring/domain/use_case/add_recurring_use_case.dart'
    as _i46;
import 'package:paisa/features/recurring/domain/use_case/recurring_use_case.dart'
    as _i82;
import 'package:paisa/features/recurring/presentation/cubit/recurring_cubit.dart'
    as _i81;
import 'package:paisa/features/search/domain/use_case/filter_expense_use_case.dart'
    as _i35;
import 'package:paisa/features/search/presentation/cubit/search_cubit.dart'
    as _i83;
import 'package:paisa/features/settings/data/authenticate.dart' as _i3;
import 'package:paisa/features/settings/data/file_handler.dart' as _i63;
import 'package:paisa/features/settings/data/repository/csv_export_impl.dart'
    as _i61;
import 'package:paisa/features/settings/data/repository/json_export_import_impl.dart'
    as _i62;
import 'package:paisa/features/settings/data/repository/settings_repository_impl.dart'
    as _i37;
import 'package:paisa/features/settings/domain/repository/import_export.dart'
    as _i60;
import 'package:paisa/features/settings/domain/repository/settings_repository.dart'
    as _i36;
import 'package:paisa/features/settings/domain/use_case/csv_file_export_use_case.dart'
    as _i92;
import 'package:paisa/features/settings/domain/use_case/json_file_export_use_case.dart'
    as _i76;
import 'package:paisa/features/settings/domain/use_case/json_file_import_use_case.dart'
    as _i77;
import 'package:paisa/features/settings/domain/use_case/setting_use_case.dart'
    as _i40;
import 'package:paisa/features/settings/domain/use_case/settings_use_case.dart'
    as _i38;
import 'package:paisa/features/settings/presentation/cubit/settings_cubit.dart'
    as _i96;
import 'package:paisa/features/transaction/data/data_sources/local_transaction_data_manager.dart'
    as _i14;
import 'package:paisa/features/transaction/data/data_sources/local_transaction_data_manager_impl.dart'
    as _i15;
import 'package:paisa/features/transaction/data/model/expense_model.dart'
    as _i10;
import 'package:paisa/features/transaction/data/repository/expense_repository_impl.dart'
    as _i18;
import 'package:paisa/features/transaction/domain/repository/expense_repository.dart'
    as _i17;
import 'package:paisa/features/transaction/domain/use_case/add_expenses_use_case.dart'
    as _i45;
import 'package:paisa/features/transaction/domain/use_case/delete_expense_use_case.dart'
    as _i57;
import 'package:paisa/features/transaction/domain/use_case/delete_expenses_from_account_id.dart'
    as _i58;
import 'package:paisa/features/transaction/domain/use_case/delete_expenses_from_category_id.dart'
    as _i59;
import 'package:paisa/features/transaction/domain/use_case/expense_use_case.dart'
    as _i71;
import 'package:paisa/features/transaction/domain/use_case/get_expense_from_account_id.dart'
    as _i21;
import 'package:paisa/features/transaction/domain/use_case/get_expense_from_category_id.dart'
    as _i22;
import 'package:paisa/features/transaction/domain/use_case/get_expense_use_case.dart'
    as _i20;
import 'package:paisa/features/transaction/domain/use_case/get_expenses_use_case.dart'
    as _i23;
import 'package:paisa/features/transaction/domain/use_case/update_expense_use_case.dart'
    as _i41;
import 'package:paisa/features/transaction/presentation/bloc/transaction_bloc.dart'
    as _i84;

import 'module/hive_module.dart' as _i98;
import 'module/service_module.dart' as _i97;

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// initializes the registration of main-scope dependencies inside of GetIt
Future<_i1.GetIt> init(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final hiveBoxModule = _$HiveBoxModule();
  final serviceBoxModule = _$ServiceBoxModule();
  gh.singleton<_i3.Authenticate>(_i3.Authenticate());
  await gh.singletonAsync<_i4.Box<_i5.RecurringModel>>(
    () => hiveBoxModule.recurringBox,
    preResolve: true,
  );
  await gh.singletonAsync<_i4.Box<dynamic>>(
    () => hiveBoxModule.boxDynamic,
    instanceName: 'settings',
    preResolve: true,
  );
  await gh.singletonAsync<_i4.Box<_i6.DebitTransactionsModel>>(
    () => hiveBoxModule.transactionsBox,
    preResolve: true,
  );
  await gh.singletonAsync<_i4.Box<_i7.DebitModel>>(
    () => hiveBoxModule.debtsBox,
    preResolve: true,
  );
  await gh.singletonAsync<_i4.Box<_i8.CategoryModel>>(
    () => hiveBoxModule.categoryBox,
    preResolve: true,
  );
  await gh.singletonAsync<_i4.Box<_i9.AccountModel>>(
    () => hiveBoxModule.accountBox,
    preResolve: true,
  );
  await gh.singletonAsync<_i4.Box<_i10.TransactionModel>>(
    () => hiveBoxModule.expenseBox,
    preResolve: true,
  );
  gh.singleton<_i11.CountryRepository>(_i12.CountryRepositoryImpl());
  gh.singleton<_i13.DeviceInfoPlugin>(
      serviceBoxModule.providesDeviceInfoPlugin());
  gh.factory<_i14.ExpenseLocalDataManager>(() =>
      _i15.LocalExpenseDataManagerImpl(gh<_i16.Box<_i10.TransactionModel>>()));
  gh.singleton<_i17.ExpenseRepository>(_i18.ExpenseRepositoryImpl(
      dataSource: gh<_i14.ExpenseLocalDataManager>()));
  gh.factory<_i19.GetCountriesUseCase>(
      () => _i19.GetCountriesUseCase(repository: gh<_i11.CountryRepository>()));
  gh.singleton<_i20.GetExpenseUseCase>(
      _i20.GetExpenseUseCase(expenseRepository: gh<_i17.ExpenseRepository>()));
  gh.singleton<_i21.GetExpensesFromAccountIdUseCase>(
      _i21.GetExpensesFromAccountIdUseCase(
          expenseRepository: gh<_i17.ExpenseRepository>()));
  gh.singleton<_i22.GetExpensesFromCategoryIdUseCase>(
      _i22.GetExpensesFromCategoryIdUseCase(
          expenseRepository: gh<_i17.ExpenseRepository>()));
  gh.singleton<_i23.GetExpensesUseCase>(
      _i23.GetExpensesUseCase(expenseRepository: gh<_i17.ExpenseRepository>()));
  gh.singleton<_i24.ImagePicker>(serviceBoxModule.providesImagePicker());
  gh.singleton<_i25.InAppReview>(serviceBoxModule.providesInAppReview());
  gh.singleton<_i26.LocalAccountDataManager>(_i26.LocalAccountDataManagerImpl(
      accountBox: gh<_i4.Box<_i9.AccountModel>>()));
  gh.singleton<_i27.LocalCategoryDataManager>(
      _i27.LocalCategoryManagerDataSourceImpl(
          gh<_i4.Box<_i8.CategoryModel>>()));
  gh.singleton<_i28.LocalDebitDataSource>(_i28.LocalDebitDataSourceImpl(
    debtBox: gh<_i4.Box<_i7.DebitModel>>(),
    transactionsBox: gh<_i4.Box<_i6.DebitTransactionsModel>>(),
  ));
  gh.factory<_i29.LocalRecurringDataManager>(() =>
      _i30.LocalRecurringDataManagerImpl(gh<_i4.Box<_i5.RecurringModel>>()));
  gh.singleton<_i31.ProfileRepository>(_i32.ProfileRepositoryImpl(
    gh<_i24.ImagePicker>(),
    gh<_i4.Box<dynamic>>(instanceName: 'settings'),
  ));
  gh.singleton<_i33.RecurringRepository>(_i34.RecurringRepositoryImpl(
    gh<_i29.LocalRecurringDataManager>(),
    gh<_i14.ExpenseLocalDataManager>(),
  ));
  gh.singleton<_i35.SearchUseCase>(
      _i35.SearchUseCase(gh<_i17.ExpenseRepository>()));
  gh.factory<_i36.SettingsRepository>(() => _i37.SettingsRepositoryImpl(
      gh<_i4.Box<dynamic>>(instanceName: 'settings')));
  gh.singleton<_i38.SettingsUseCase>(
      _i38.SettingsUseCase(gh<_i36.SettingsRepository>()));
  gh.singleton<_i39.SummaryController>(
      _i39.SummaryController(gh<_i40.SettingsUseCase>()));
  gh.singleton<_i41.UpdateExpensesUseCase>(_i41.UpdateExpensesUseCase(
      expenseRepository: gh<_i17.ExpenseRepository>()));
  gh.singleton<_i42.AccountRepository>(_i43.AccountRepositoryImpl(
      dataSource: gh<_i26.LocalAccountDataManager>()));
  gh.singleton<_i44.AddAccountUseCase>(
      _i44.AddAccountUseCase(accountRepository: gh<_i42.AccountRepository>()));
  gh.singleton<_i45.AddExpenseUseCase>(
      _i45.AddExpenseUseCase(expenseRepository: gh<_i17.ExpenseRepository>()));
  gh.singleton<_i46.AddRecurringUseCase>(
      _i46.AddRecurringUseCase(gh<_i33.RecurringRepository>()));
  gh.singleton<_i47.CategoryRepository>(_i48.CategoryRepositoryImpl(
    dataSources: gh<_i27.LocalCategoryDataManager>(),
    expenseDataManager: gh<_i14.ExpenseLocalDataManager>(),
    settings: gh<_i4.Box<dynamic>>(instanceName: 'settings'),
  ));
  gh.factory<_i49.CountryPickerCubit>(() => _i49.CountryPickerCubit(
        gh<_i19.GetCountriesUseCase>(),
        gh<_i40.SettingsUseCase>(),
      ));
  gh.singleton<_i50.DebtRepository>(
      _i51.DebtRepositoryImpl(dataSource: gh<_i28.LocalDebitDataSource>()));
  gh.singleton<_i52.DeleteAccountUseCase>(_i52.DeleteAccountUseCase(
      accountRepository: gh<_i42.AccountRepository>()));
  gh.singleton<_i53.DeleteCategoryUseCase>(_i53.DeleteCategoryUseCase(
      categoryRepository: gh<_i47.CategoryRepository>()));
  gh.singleton<_i54.DeleteDebitTransactionUseCase>(
      _i54.DeleteDebitTransactionUseCase(
          debtRepository: gh<_i50.DebtRepository>()));
  gh.singleton<_i55.DeleteDebitTransactionsByDebitIdUseCase>(
      _i55.DeleteDebitTransactionsByDebitIdUseCase(
          debtRepository: gh<_i50.DebtRepository>()));
  gh.singleton<_i56.DeleteDebtUseCase>(
      _i56.DeleteDebtUseCase(debtRepository: gh<_i50.DebtRepository>()));
  gh.singleton<_i57.DeleteExpenseUseCase>(_i57.DeleteExpenseUseCase(
      expenseRepository: gh<_i17.ExpenseRepository>()));
  gh.singleton<_i58.DeleteExpensesFromAccountIdUseCase>(
      _i58.DeleteExpensesFromAccountIdUseCase(
          expenseRepository: gh<_i17.ExpenseRepository>()));
  gh.singleton<_i59.DeleteExpensesFromCategoryIdUseCase>(
      _i59.DeleteExpensesFromCategoryIdUseCase(
          expenseRepository: gh<_i17.ExpenseRepository>()));
  gh.lazySingleton<_i60.Export>(
    () => _i61.CSVExport(
      gh<_i13.DeviceInfoPlugin>(),
      gh<_i26.LocalAccountDataManager>(),
      gh<_i27.LocalCategoryDataManager>(),
      gh<_i14.ExpenseLocalDataManager>(),
    ),
    instanceName: 'csv',
  );
  gh.lazySingleton<_i60.Export>(
    () => _i62.JSONExportImpl(
      gh<_i26.LocalAccountDataManager>(),
      gh<_i27.LocalCategoryDataManager>(),
      gh<_i14.ExpenseLocalDataManager>(),
    ),
    instanceName: 'json_export',
  );
  gh.singleton<_i63.FileHandler>(_i63.FileHandler(
    gh<_i13.DeviceInfoPlugin>(),
    gh<_i26.LocalAccountDataManager>(),
    gh<_i27.LocalCategoryDataManager>(),
    gh<_i14.ExpenseLocalDataManager>(),
  ));
  gh.singleton<_i64.GetAccountUseCase>(
      _i64.GetAccountUseCase(accountRepository: gh<_i42.AccountRepository>()));
  gh.singleton<_i65.GetAccountsUseCase>(
      _i65.GetAccountsUseCase(accountRepository: gh<_i42.AccountRepository>()));
  gh.singleton<_i66.GetCategoryUseCase>(_i66.GetCategoryUseCase(
      categoryRepository: gh<_i47.CategoryRepository>()));
  gh.singleton<_i67.GetDebitTransactionsUseCase>(
      _i67.GetDebitTransactionsUseCase(
          debtRepository: gh<_i50.DebtRepository>()));
  gh.singleton<_i68.GetDebtUseCase>(
      _i68.GetDebtUseCase(debtRepository: gh<_i50.DebtRepository>()));
  gh.singleton<_i69.GetDefaultCategoriesUseCase>(
      _i69.GetDefaultCategoriesUseCase(
          categoryRepository: gh<_i47.CategoryRepository>()));
  gh.factory<_i70.HomeBloc>(() => _i70.HomeBloc(
        gh<_i71.GetExpensesUseCase>(),
        gh<_i72.GetDefaultCategoriesUseCase>(),
        gh<_i73.GetAccountUseCase>(),
        gh<_i72.GetCategoryUseCase>(),
        gh<_i71.GetExpensesFromCategoryIdUseCase>(),
      ));
  gh.singleton<_i74.ImagePickerUseCase>(
      _i74.ImagePickerUseCase(gh<_i31.ProfileRepository>()));
  gh.lazySingleton<_i60.Import>(
    () => _i62.JSONImportImpl(
      gh<_i13.DeviceInfoPlugin>(),
      gh<_i26.LocalAccountDataManager>(),
      gh<_i27.LocalCategoryDataManager>(),
      gh<_i14.ExpenseLocalDataManager>(),
    ),
    instanceName: 'json_import',
  );
  gh.singleton<_i75.InApp>(_i75.InApp(gh<_i25.InAppReview>()));
  gh.singleton<_i76.JSONFileExportUseCase>(_i76.JSONFileExportUseCase(
    gh<_i36.SettingsRepository>(),
    gh<_i60.Export>(instanceName: 'json_export'),
  ));
  gh.singleton<_i77.JSONFileImportUseCase>(_i77.JSONFileImportUseCase(
    gh<_i36.SettingsRepository>(),
    gh<_i60.Import>(instanceName: 'json_import'),
  ));
  gh.factory<_i78.OverviewCubit>(() => _i78.OverviewCubit(
        gh<_i71.GetExpensesUseCase>(),
        gh<_i72.GetCategoryUseCase>(),
        gh<_i72.GetDefaultCategoriesUseCase>(),
      ));
  gh.factory<_i79.ProfileCubit>(() => _i79.ProfileCubit(
        gh<_i80.ImagePickerUseCase>(),
        gh<_i4.Box<dynamic>>(instanceName: 'settings'),
      ));
  gh.factory<_i81.RecurringCubit>(
      () => _i81.RecurringCubit(gh<_i82.AddRecurringUseCase>()));
  gh.factory<_i83.SearchCubit>(
      () => _i83.SearchCubit(gh<_i71.SearchUseCase>()));
  gh.factory<_i84.TransactionBloc>(() => _i84.TransactionBloc(
        gh<_i38.SettingsUseCase>(),
        expenseUseCase: gh<_i71.GetExpenseUseCase>(),
        accountUseCase: gh<_i73.GetAccountUseCase>(),
        addExpenseUseCase: gh<_i71.AddExpenseUseCase>(),
        deleteExpenseUseCase: gh<_i71.DeleteExpenseUseCase>(),
        updateExpensesUseCase: gh<_i71.UpdateExpensesUseCase>(),
        accountsUseCase: gh<_i73.GetAccountsUseCase>(),
        defaultCategoriesUseCase: gh<_i72.GetDefaultCategoriesUseCase>(),
      ));
  gh.singleton<_i85.UpdateAccountUseCase>(_i85.UpdateAccountUseCase(
      accountRepository: gh<_i42.AccountRepository>()));
  gh.singleton<_i86.UpdateCategoryUseCase>(_i86.UpdateCategoryUseCase(
      categoryRepository: gh<_i47.CategoryRepository>()));
  gh.singleton<_i87.UpdateDebtUseCase>(
      _i87.UpdateDebtUseCase(debtRepository: gh<_i50.DebtRepository>()));
  gh.factory<_i88.AccountsBloc>(() => _i88.AccountsBloc(
        getAccountUseCase: gh<_i73.GetAccountUseCase>(),
        deleteAccountUseCase: gh<_i73.DeleteAccountUseCase>(),
        getExpensesFromAccountIdUseCase:
            gh<_i71.GetExpensesFromAccountIdUseCase>(),
        addAccountUseCase: gh<_i73.AddAccountUseCase>(),
        getCategoryUseCase: gh<_i66.GetCategoryUseCase>(),
        deleteExpensesFromAccountIdUseCase:
            gh<_i71.DeleteExpensesFromAccountIdUseCase>(),
        updateAccountUseCase: gh<_i73.UpdateAccountUseCase>(),
      ));
  gh.singleton<_i89.AddCategoryUseCase>(_i89.AddCategoryUseCase(
      categoryRepository: gh<_i47.CategoryRepository>()));
  gh.singleton<_i90.AddDebtUseCase>(
      _i90.AddDebtUseCase(debtRepository: gh<_i50.DebtRepository>()));
  gh.singleton<_i91.AddTransactionUseCase>(
      _i91.AddTransactionUseCase(debtRepository: gh<_i50.DebtRepository>()));
  gh.singleton<_i92.CSVFileExportUseCase>(_i92.CSVFileExportUseCase(
    gh<_i36.SettingsRepository>(),
    gh<_i60.Export>(instanceName: 'csv'),
  ));
  gh.factory<_i93.CategoryBloc>(() => _i93.CategoryBloc(
        getCategoryUseCase: gh<_i72.GetCategoryUseCase>(),
        addCategoryUseCase: gh<_i72.AddCategoryUseCase>(),
        deleteCategoryUseCase: gh<_i72.DeleteCategoryUseCase>(),
        deleteExpensesFromCategoryIdUseCase:
            gh<_i71.DeleteExpensesFromCategoryIdUseCase>(),
        updateCategoryUseCase: gh<_i72.UpdateCategoryUseCase>(),
      ));
  gh.factory<_i94.DebtsBloc>(() => _i94.DebtsBloc(
        addDebtUseCase: gh<_i95.AddDebtUseCase>(),
        getDebtUseCase: gh<_i95.GetDebtUseCase>(),
        getTransactionsUseCase: gh<_i95.GetDebitTransactionsUseCase>(),
        addTransactionUseCase: gh<_i95.AddTransactionUseCase>(),
        updateDebtUseCase: gh<_i95.UpdateDebtUseCase>(),
        deleteDebtUseCase: gh<_i95.DeleteDebtUseCase>(),
        deleteDebitTransactionUseCase: gh<_i95.DeleteDebitTransactionUseCase>(),
        deleteDebitTransactionsByDebitIdUseCase:
            gh<_i55.DeleteDebitTransactionsByDebitIdUseCase>(),
      ));
  gh.factory<_i96.SettingCubit>(() => _i96.SettingCubit(
        gh<_i71.GetExpensesUseCase>(),
        gh<_i72.GetDefaultCategoriesUseCase>(),
        gh<_i71.UpdateExpensesUseCase>(),
        gh<_i40.JSONFileImportUseCase>(),
        gh<_i40.JSONFileExportUseCase>(),
        gh<_i40.SettingsUseCase>(),
        gh<_i40.CSVFileExportUseCase>(),
      ));
  return getIt;
}

class _$ServiceBoxModule extends _i97.ServiceBoxModule {}

class _$HiveBoxModule extends _i98.HiveBoxModule {}
