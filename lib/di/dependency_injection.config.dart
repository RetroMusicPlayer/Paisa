// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:device_info_plus/device_info_plus.dart' as _i16;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hive_flutter/adapters.dart' as _i4;
import 'package:hive_flutter/hive_flutter.dart' as _i30;
import 'package:image_picker/image_picker.dart' as _i19;
import 'package:injectable/injectable.dart' as _i2;
import 'package:package_info_plus/package_info_plus.dart' as _i22;

import '../features/account/data/data_sources/account_data_manager.dart'
    as _i34;
import '../features/account/data/model/account_model.dart' as _i9;
import '../features/account/data/repository/account_repository_impl.dart'
    as _i36;
import '../features/account/domain/repository/account_repository.dart' as _i35;
import '../features/account/domain/use_case/account_use_case.dart' as _i71;
import '../features/account/domain/use_case/add_account_use_case.dart' as _i37;
import '../features/account/domain/use_case/delete_account_use_case.dart'
    as _i46;
import '../features/account/domain/use_case/get_account_use_case.dart' as _i57;
import '../features/account/domain/use_case/get_accounts_use_case.dart' as _i58;
import '../features/account/domain/use_case/get_transactions_by_account_id_and_month_use_case.dart'
    as _i64;
import '../features/account/domain/use_case/update_account_use_case.dart'
    as _i83;
import '../features/account/presentation/bloc/accounts_bloc.dart' as _i86;
import '../features/category/data/data_sources/category_data_source.dart'
    as _i11;
import '../features/category/data/model/category_model.dart' as _i8;
import '../features/category/data/repository/category_repository_impl.dart'
    as _i40;
import '../features/category/domain/repository/category_repository.dart'
    as _i39;
import '../features/category/domain/use_case/add_category_use_case.dart'
    as _i87;
import '../features/category/domain/use_case/category_use_case.dart' as _i70;
import '../features/category/domain/use_case/delete_category_use_case.dart'
    as _i47;
import '../features/category/domain/use_case/get_category_use_case.dart'
    as _i59;
import '../features/category/domain/use_case/get_default_categories_use_case.dart'
    as _i62;
import '../features/category/domain/use_case/update_category_use_case.dart'
    as _i84;
import '../features/category/presentation/bloc/category_bloc.dart' as _i92;
import '../features/debit/data/data_sources/debit_local_data_source_impl.dart'
    as _i14;
import '../features/debit/data/models/debit_model.dart' as _i7;
import '../features/debit/data/repository/debit_repository_impl.dart' as _i43;
import '../features/debit/domain/repository/debit_repository.dart' as _i42;
import '../features/debit/domain/use_case/add_debit_use.case.dart' as _i89;
import '../features/debit/domain/use_case/debit_use_case.dart' as _i94;
import '../features/debit/domain/use_case/delete_debit_use_case.dart' as _i50;
import '../features/debit/domain/use_case/get_debit_use_case.dart' as _i61;
import '../features/debit/domain/use_case/update_debit_use.case.dart' as _i85;
import '../features/debit/presentation/cubit/debts_bloc.dart' as _i93;
import '../features/debit_transaction/data/data_source/debit_transactions_data_store.dart'
    as _i15;
import '../features/debit_transaction/data/model/debit_transactions_model.dart'
    as _i6;
import '../features/debit_transaction/data/repository/debit_transaction_repo_impl.dart'
    as _i45;
import '../features/debit_transaction/domain/repository/debit_transaction_repository.dart'
    as _i44;
import '../features/debit_transaction/domain/use_case/add_debit_transaction_use_case.dart'
    as _i88;
import '../features/debit_transaction/domain/use_case/delete_debit_transaction_use_case.dart'
    as _i48;
import '../features/debit_transaction/domain/use_case/delete_debit_transactions_by_debit_id_use_case.dart'
    as _i49;
import '../features/debit_transaction/domain/use_case/get_debit_transactions_use_case.dart'
    as _i60;
import '../features/home/presentation/controller/summary_controller.dart'
    as _i80;
import '../features/home/presentation/pages/home/home_cubit.dart' as _i68;
import '../features/intro/data/repository/country_repository_impl.dart' as _i13;
import '../features/intro/domain/repository/country_repository.dart' as _i12;
import '../features/intro/domain/use_case/get_contries_user_case.dart' as _i17;
import '../features/intro/domain/use_case/get_selected_country_use_case.dart'
    as _i18;
import '../features/intro/domain/use_case/save_selected_country_use_case.dart'
    as _i25;
import '../features/intro/presentation/cubit/country_picker_cubit.dart' as _i41;
import '../features/profile/data/repository/profile_repository_impl.dart'
    as _i24;
import '../features/profile/domain/repository/profile_repository.dart' as _i23;
import '../features/profile/domain/use_case/image_picker_use_case.dart' as _i72;
import '../features/profile/domain/use_case/profile_use_case.dart' as _i76;
import '../features/profile/presentation/cubit/profile_cubit.dart' as _i75;
import '../features/recurring/data/data_sources/local_recurring_data_manager.dart'
    as _i20;
import '../features/recurring/data/data_sources/local_recurring_data_manager_impl.dart'
    as _i21;
import '../features/recurring/data/model/recurring.dart' as _i5;
import '../features/recurring/data/repository/recurring_repository_impl.dart'
    as _i78;
import '../features/recurring/domain/repository/recurring_repository.dart'
    as _i77;
import '../features/recurring/domain/use_case/add_recurring_use_case.dart'
    as _i90;
import '../features/recurring/domain/use_case/recurring_use_case.dart' as _i96;
import '../features/recurring/presentation/cubit/recurring_cubit.dart' as _i95;
import '../features/search/domain/use_case/filter_expense_use_case.dart'
    as _i79;
import '../features/search/presentation/cubit/search_cubit.dart' as _i97;
import '../features/settings/data/authenticate.dart' as _i3;
import '../features/settings/data/repository/csv_export_impl.dart' as _i56;
import '../features/settings/data/repository/json_export_import_impl.dart'
    as _i55;
import '../features/settings/data/repository/settings_repository_impl.dart'
    as _i27;
import '../features/settings/domain/repository/import_export.dart' as _i54;
import '../features/settings/domain/repository/settings_repository.dart'
    as _i26;
import '../features/settings/domain/use_case/csv_file_export_use_case.dart'
    as _i91;
import '../features/settings/domain/use_case/json_file_export_use_case.dart'
    as _i73;
import '../features/settings/domain/use_case/json_file_import_use_case.dart'
    as _i74;
import '../features/settings/domain/use_case/setting_use_case.dart' as _i81;
import '../features/settings/domain/use_case/settings_use_case.dart' as _i28;
import '../features/settings/presentation/cubit/settings_cubit.dart' as _i98;
import '../features/transaction/data/data_sources/local/transaction_data_manager.dart'
    as _i29;
import '../features/transaction/data/model/transaction_model.dart' as _i10;
import '../features/transaction/data/repository/transaction_repository_impl.dart'
    as _i32;
import '../features/transaction/domain/repository/transaction_repository.dart'
    as _i31;
import '../features/transaction/domain/use_case/add_transaction_use_case.dart'
    as _i38;
import '../features/transaction/domain/use_case/delete_transaction_from_category_id_use_case.dart'
    as _i53;
import '../features/transaction/domain/use_case/delete_transaction_use_case.dart'
    as _i51;
import '../features/transaction/domain/use_case/delete_transactions_by_account_id_use_case.dart'
    as _i52;
import '../features/transaction/domain/use_case/get_transaction_use_case.dart'
    as _i63;
import '../features/transaction/domain/use_case/get_transactions_by_account_id_use_case.dart'
    as _i65;
import '../features/transaction/domain/use_case/get_transactions_by_category_id_use_case.dart'
    as _i66;
import '../features/transaction/domain/use_case/get_transactions_use_case.dart'
    as _i67;
import '../features/transaction/domain/use_case/transaction_use_case.dart'
    as _i69;
import '../features/transaction/domain/use_case/update_expense_use_case.dart'
    as _i33;
import '../features/transaction/presentation/bloc/transaction_bloc.dart'
    as _i82;
import 'module/hive_module.dart' as _i99;
import 'module/service_module.dart' as _i100;

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
  gh.lazySingleton<_i3.Authenticate>(() => _i3.Authenticate());
  await gh.lazySingletonAsync<_i4.Box<dynamic>>(
    () => hiveBoxModule.boxDynamic,
    instanceName: 'settings',
    preResolve: true,
  );
  await gh.lazySingletonAsync<_i4.Box<_i5.RecurringModel>>(
    () => hiveBoxModule.recurringBox,
    preResolve: true,
  );
  await gh.lazySingletonAsync<_i4.Box<_i6.DebitTransactionsModel>>(
    () => hiveBoxModule.transactionsBox,
    preResolve: true,
  );
  await gh.lazySingletonAsync<_i4.Box<_i7.DebitModel>>(
    () => hiveBoxModule.debtsBox,
    preResolve: true,
  );
  await gh.lazySingletonAsync<_i4.Box<_i8.CategoryModel>>(
    () => hiveBoxModule.categoryBox,
    preResolve: true,
  );
  await gh.lazySingletonAsync<_i4.Box<_i9.AccountModel>>(
    () => hiveBoxModule.accountBox,
    preResolve: true,
  );
  await gh.lazySingletonAsync<_i4.Box<_i10.TransactionModel>>(
    () => hiveBoxModule.expenseBox,
    preResolve: true,
  );
  gh.lazySingleton<_i11.CategoryDataSource>(() =>
      _i11.LocalCategoryManagerDataSourceImpl(
          gh<_i4.Box<_i8.CategoryModel>>()));
  gh.lazySingleton<_i12.CountryRepository>(() => _i13.CountryRepositoryImpl(
      gh<_i4.Box<dynamic>>(instanceName: 'settings')));
  gh.lazySingleton<_i14.DebtDataSource>(
      () => _i14.DebitDataSourceImpl(debtBox: gh<_i4.Box<_i7.DebitModel>>()));
  gh.lazySingleton<_i15.DebtTransactionDataSource>(() =>
      _i15.DebitTransactionDataStoreImpl(
          transactionsBox: gh<_i4.Box<_i6.DebitTransactionsModel>>()));
  gh.lazySingleton<_i16.DeviceInfoPlugin>(
      () => serviceBoxModule.providesDeviceInfoPlugin());
  gh.factory<_i17.GetCountriesUseCase>(
      () => _i17.GetCountriesUseCase(repository: gh<_i12.CountryRepository>()));
  gh.lazySingleton<_i18.GetSelectedCountryUseCase>(() =>
      _i18.GetSelectedCountryUseCase(repository: gh<_i12.CountryRepository>()));
  gh.lazySingleton<_i19.ImagePicker>(
      () => serviceBoxModule.providesImagePicker());
  gh.factory<_i20.LocalRecurringDataManager>(() =>
      _i21.LocalRecurringDataManagerImpl(gh<_i4.Box<_i5.RecurringModel>>()));
  await gh.lazySingletonAsync<_i22.PackageInfo>(
    () => serviceBoxModule.providesPackageInfoPlugin(),
    preResolve: true,
  );
  gh.lazySingleton<_i23.ProfileRepository>(() => _i24.ProfileRepositoryImpl(
        gh<_i19.ImagePicker>(),
        gh<_i4.Box<dynamic>>(instanceName: 'settings'),
      ));
  gh.lazySingleton<_i25.SaveSelectedCountryUseCase>(() =>
      _i25.SaveSelectedCountryUseCase(
          repository: gh<_i12.CountryRepository>()));
  gh.factory<_i26.SettingsRepository>(() => _i27.SettingsRepositoryImpl(
      gh<_i4.Box<dynamic>>(instanceName: 'settings')));
  gh.lazySingleton<_i28.SettingsUseCase>(
      () => _i28.SettingsUseCase(gh<_i26.SettingsRepository>()));
  gh.factory<_i29.TransactionDataSource>(() =>
      _i29.LocalTransactionManagerImpl(gh<_i30.Box<_i10.TransactionModel>>()));
  gh.lazySingleton<_i31.TransactionRepository>(() =>
      _i32.ExpenseRepositoryImpl(dataSource: gh<_i29.TransactionDataSource>()));
  gh.lazySingleton<_i33.UpdateTransactionUseCase>(() =>
      _i33.UpdateTransactionUseCase(
          expenseRepository: gh<_i31.TransactionRepository>()));
  gh.lazySingleton<_i34.AccountDataSource>(() =>
      _i34.AccountDataSourceImpl(accountBox: gh<_i4.Box<_i9.AccountModel>>()));
  gh.lazySingleton<_i35.AccountRepository>(() =>
      _i36.AccountRepositoryImpl(dataSource: gh<_i34.AccountDataSource>()));
  gh.lazySingleton<_i37.AddAccountUseCase>(() =>
      _i37.AddAccountUseCase(accountRepository: gh<_i35.AccountRepository>()));
  gh.lazySingleton<_i38.AddTransactionUseCase>(() => _i38.AddTransactionUseCase(
      expenseRepository: gh<_i31.TransactionRepository>()));
  gh.lazySingleton<_i39.CategoryRepository>(() => _i40.CategoryRepositoryImpl(
        dataSources: gh<_i11.CategoryDataSource>(),
        expenseDataManager: gh<_i29.TransactionDataSource>(),
      ));
  gh.factory<_i41.CountryPickerCubit>(() => _i41.CountryPickerCubit(
        gh<_i17.GetCountriesUseCase>(),
        gh<_i18.GetSelectedCountryUseCase>(),
        gh<_i25.SaveSelectedCountryUseCase>(),
      ));
  gh.lazySingleton<_i42.DebitRepository>(
      () => _i43.DebtRepositoryImpl(dataSource: gh<_i14.DebtDataSource>()));
  gh.lazySingleton<_i44.DebitTransactionRepository>(() =>
      _i45.DebitTransactionRepoImpl(
          dataStore: gh<_i15.DebtTransactionDataSource>()));
  gh.lazySingleton<_i46.DeleteAccountUseCase>(() => _i46.DeleteAccountUseCase(
      accountRepository: gh<_i35.AccountRepository>()));
  gh.lazySingleton<_i47.DeleteCategoryUseCase>(() => _i47.DeleteCategoryUseCase(
      categoryRepository: gh<_i39.CategoryRepository>()));
  gh.lazySingleton<_i48.DeleteDebitTransactionUseCase>(() =>
      _i48.DeleteDebitTransactionUseCase(
          debtRepository: gh<_i44.DebitTransactionRepository>()));
  gh.lazySingleton<_i49.DeleteDebitTransactionsByDebitIdUseCase>(() =>
      _i49.DeleteDebitTransactionsByDebitIdUseCase(
          debtRepository: gh<_i44.DebitTransactionRepository>()));
  gh.lazySingleton<_i50.DeleteDebitUseCase>(() =>
      _i50.DeleteDebitUseCase(debtRepository: gh<_i42.DebitRepository>()));
  gh.lazySingleton<_i51.DeleteTransactionUseCase>(() =>
      _i51.DeleteTransactionUseCase(
          expenseRepository: gh<_i31.TransactionRepository>()));
  gh.lazySingleton<_i52.DeleteTransactionsByAccountIdUseCase>(() =>
      _i52.DeleteTransactionsByAccountIdUseCase(
          expenseRepository: gh<_i31.TransactionRepository>()));
  gh.lazySingleton<_i53.DeleteTransactionsByCategoryIdUseCase>(() =>
      _i53.DeleteTransactionsByCategoryIdUseCase(
          transactionRepository: gh<_i31.TransactionRepository>()));
  gh.lazySingleton<_i54.Export>(
    () => _i55.JSONExportImpl(
      gh<_i34.AccountDataSource>(),
      gh<_i11.CategoryDataSource>(),
      gh<_i29.TransactionDataSource>(),
      gh<_i14.DebtDataSource>(),
      gh<_i15.DebtTransactionDataSource>(),
      gh<_i22.PackageInfo>(),
    ),
    instanceName: 'json_export',
  );
  gh.lazySingleton<_i54.Export>(
    () => _i56.CSVExport(
      gh<_i16.DeviceInfoPlugin>(),
      gh<_i34.AccountDataSource>(),
      gh<_i11.CategoryDataSource>(),
      gh<_i29.TransactionDataSource>(),
    ),
    instanceName: 'csv',
  );
  gh.lazySingleton<_i57.GetAccountUseCase>(() =>
      _i57.GetAccountUseCase(accountRepository: gh<_i35.AccountRepository>()));
  gh.lazySingleton<_i58.GetAccountsUseCase>(() =>
      _i58.GetAccountsUseCase(accountRepository: gh<_i35.AccountRepository>()));
  gh.lazySingleton<_i59.GetCategoryUseCase>(() => _i59.GetCategoryUseCase(
      categoryRepository: gh<_i39.CategoryRepository>()));
  gh.lazySingleton<_i60.GetDebitTransactionsUseCase>(() =>
      _i60.GetDebitTransactionsUseCase(
          debtRepository: gh<_i44.DebitTransactionRepository>()));
  gh.lazySingleton<_i61.GetDebitUseCase>(
      () => _i61.GetDebitUseCase(debtRepository: gh<_i42.DebitRepository>()));
  gh.lazySingleton<_i62.GetDefaultCategoriesUseCase>(() =>
      _i62.GetDefaultCategoriesUseCase(
          categoryRepository: gh<_i39.CategoryRepository>()));
  gh.lazySingleton<_i63.GetTransactionUseCase>(() => _i63.GetTransactionUseCase(
      transactionRepository: gh<_i31.TransactionRepository>()));
  gh.lazySingleton<_i64.GetTransactionsByAccountIdAndMonthUseCase>(() =>
      _i64.GetTransactionsByAccountIdAndMonthUseCase(
          gh<_i31.TransactionRepository>()));
  gh.lazySingleton<_i65.GetTransactionsByAccountIdUseCase>(() =>
      _i65.GetTransactionsByAccountIdUseCase(
          expenseRepository: gh<_i31.TransactionRepository>()));
  gh.lazySingleton<_i66.GetTransactionsByCategoryIdUseCase>(() =>
      _i66.GetTransactionsByCategoryIdUseCase(
          expenseRepository: gh<_i31.TransactionRepository>()));
  gh.lazySingleton<_i67.GetTransactionsUseCase>(() =>
      _i67.GetTransactionsUseCase(
          expenseRepository: gh<_i31.TransactionRepository>()));
  gh.factory<_i68.HomeCubit>(() => _i68.HomeCubit(
        gh<_i69.GetTransactionsUseCase>(),
        gh<_i70.GetDefaultCategoriesUseCase>(),
        gh<_i71.GetAccountUseCase>(),
        gh<_i70.GetCategoryUseCase>(),
        gh<_i69.GetTransactionsByCategoryIdUseCase>(),
      ));
  gh.lazySingleton<_i72.ImagePickerUseCase>(
      () => _i72.ImagePickerUseCase(gh<_i23.ProfileRepository>()));
  gh.lazySingleton<_i54.Import>(
    () => _i55.JSONImportImpl(
      gh<_i16.DeviceInfoPlugin>(),
      gh<_i34.AccountDataSource>(),
      gh<_i11.CategoryDataSource>(),
      gh<_i29.TransactionDataSource>(),
      gh<_i14.DebtDataSource>(),
      gh<_i15.DebtTransactionDataSource>(),
    ),
    instanceName: 'json_import',
  );
  gh.lazySingleton<_i73.JSONFileExportUseCase>(() => _i73.JSONFileExportUseCase(
        gh<_i26.SettingsRepository>(),
        gh<_i54.Export>(instanceName: 'json_export'),
      ));
  gh.lazySingleton<_i74.JSONFileImportUseCase>(() => _i74.JSONFileImportUseCase(
        gh<_i26.SettingsRepository>(),
        gh<_i54.Import>(instanceName: 'json_import'),
      ));
  gh.factory<_i75.ProfileCubit>(() => _i75.ProfileCubit(
        gh<_i76.ImagePickerUseCase>(),
        gh<_i4.Box<dynamic>>(instanceName: 'settings'),
      ));
  gh.lazySingleton<_i77.RecurringRepository>(() => _i78.RecurringRepositoryImpl(
        gh<_i20.LocalRecurringDataManager>(),
        gh<_i29.TransactionDataSource>(),
      ));
  gh.lazySingleton<_i79.SearchUseCase>(
      () => _i79.SearchUseCase(gh<_i31.TransactionRepository>()));
  gh.lazySingleton<_i80.SummaryController>(() => _i80.SummaryController(
        gh<_i81.SettingsUseCase>(),
        gh<_i31.TransactionRepository>(),
      ));
  gh.factory<_i82.TransactionBloc>(() => _i82.TransactionBloc(
        gh<_i28.SettingsUseCase>(),
        gh<_i31.TransactionRepository>(),
        getTransactionUseCase: gh<_i69.GetTransactionUseCase>(),
        accountUseCase: gh<_i71.GetAccountUseCase>(),
        addTransactionUseCase: gh<_i69.AddTransactionUseCase>(),
        deleteTransactionUseCase: gh<_i69.DeleteTransactionUseCase>(),
        updateTransactionUseCase: gh<_i69.UpdateTransactionUseCase>(),
        accountsUseCase: gh<_i71.GetAccountsUseCase>(),
        getDefaultCategoriesUseCase: gh<_i70.GetDefaultCategoriesUseCase>(),
      ));
  gh.lazySingleton<_i83.UpdateAccountUseCase>(() => _i83.UpdateAccountUseCase(
      accountRepository: gh<_i35.AccountRepository>()));
  gh.lazySingleton<_i84.UpdateCategoryUseCase>(() => _i84.UpdateCategoryUseCase(
      categoryRepository: gh<_i39.CategoryRepository>()));
  gh.lazySingleton<_i85.UpdateDebitUseCase>(() =>
      _i85.UpdateDebitUseCase(debtRepository: gh<_i42.DebitRepository>()));
  gh.factory<_i86.AccountBloc>(() => _i86.AccountBloc(
        getAccountUseCase: gh<_i71.GetAccountUseCase>(),
        deleteAccountUseCase: gh<_i71.DeleteAccountUseCase>(),
        getTransactionsByAccountIdUseCase:
            gh<_i69.GetTransactionsByAccountIdUseCase>(),
        addAccountUseCase: gh<_i71.AddAccountUseCase>(),
        getCategoryUseCase: gh<_i59.GetCategoryUseCase>(),
        deleteExpensesFromAccountIdUseCase:
            gh<_i69.DeleteTransactionsByAccountIdUseCase>(),
        updateAccountUseCase: gh<_i71.UpdateAccountUseCase>(),
        getTransactionsByAccountIdAndMonthUseCase:
            gh<_i64.GetTransactionsByAccountIdAndMonthUseCase>(),
      ));
  gh.lazySingleton<_i87.AddCategoryUseCase>(() => _i87.AddCategoryUseCase(
      categoryRepository: gh<_i39.CategoryRepository>()));
  gh.lazySingleton<_i88.AddDebitTransactionUseCase>(() =>
      _i88.AddDebitTransactionUseCase(
          debtRepository: gh<_i44.DebitTransactionRepository>()));
  gh.lazySingleton<_i89.AddDebitUseCase>(
      () => _i89.AddDebitUseCase(debtRepository: gh<_i42.DebitRepository>()));
  gh.lazySingleton<_i90.AddRecurringUseCase>(
      () => _i90.AddRecurringUseCase(gh<_i77.RecurringRepository>()));
  gh.lazySingleton<_i91.CSVFileExportUseCase>(() => _i91.CSVFileExportUseCase(
        gh<_i26.SettingsRepository>(),
        gh<_i54.Export>(instanceName: 'csv'),
      ));
  gh.factory<_i92.CategoryBloc>(() => _i92.CategoryBloc(
        getCategoryUseCase: gh<_i70.GetCategoryUseCase>(),
        addCategoryUseCase: gh<_i70.AddCategoryUseCase>(),
        deleteCategoryUseCase: gh<_i70.DeleteCategoryUseCase>(),
        deleteExpensesFromCategoryIdUseCase:
            gh<_i69.DeleteTransactionsByCategoryIdUseCase>(),
        updateCategoryUseCase: gh<_i70.UpdateCategoryUseCase>(),
      ));
  gh.factory<_i93.DebitBloc>(() => _i93.DebitBloc(
        addDebtUseCase: gh<_i94.AddDebitUseCase>(),
        getDebtUseCase: gh<_i94.GetDebitUseCase>(),
        getTransactionsUseCase: gh<_i60.GetDebitTransactionsUseCase>(),
        addTransactionUseCase: gh<_i88.AddDebitTransactionUseCase>(),
        updateDebtUseCase: gh<_i94.UpdateDebitUseCase>(),
        deleteDebtUseCase: gh<_i94.DeleteDebitUseCase>(),
        deleteDebitTransactionUseCase: gh<_i48.DeleteDebitTransactionUseCase>(),
        deleteDebitTransactionsByDebitIdUseCase:
            gh<_i49.DeleteDebitTransactionsByDebitIdUseCase>(),
      ));
  gh.factory<_i95.RecurringCubit>(
      () => _i95.RecurringCubit(gh<_i96.AddRecurringUseCase>()));
  gh.factory<_i97.SearchCubit>(
      () => _i97.SearchCubit(gh<_i79.SearchUseCase>()));
  gh.factory<_i98.SettingCubit>(() => _i98.SettingCubit(
        gh<_i69.GetTransactionsUseCase>(),
        gh<_i70.GetDefaultCategoriesUseCase>(),
        gh<_i69.UpdateTransactionUseCase>(),
        gh<_i81.JSONFileImportUseCase>(),
        gh<_i81.JSONFileExportUseCase>(),
        gh<_i81.SettingsUseCase>(),
        gh<_i81.CSVFileExportUseCase>(),
      ));
  return getIt;
}

class _$HiveBoxModule extends _i99.HiveBoxModule {}

class _$ServiceBoxModule extends _i100.ServiceBoxModule {}
