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
import 'package:hive_flutter/hive_flutter.dart' as _i32;
import 'package:image_picker/image_picker.dart' as _i19;
import 'package:in_app_review/in_app_review.dart' as _i20;
import 'package:injectable/injectable.dart' as _i2;

import '../core/in_app.dart' as _i75;
import '../features/account/data/data_sources/account_data_manager.dart'
    as _i36;
import '../features/account/data/model/account_model.dart' as _i7;
import '../features/account/data/repository/account_repository_impl.dart'
    as _i38;
import '../features/account/domain/repository/account_repository.dart' as _i37;
import '../features/account/domain/use_case/account_use_case.dart' as _i73;
import '../features/account/domain/use_case/add_account_use_case.dart' as _i39;
import '../features/account/domain/use_case/delete_account_use_case.dart'
    as _i48;
import '../features/account/domain/use_case/get_account_use_case.dart' as _i60;
import '../features/account/domain/use_case/get_accounts_use_case.dart' as _i61;
import '../features/account/domain/use_case/update_account_use_case.dart'
    as _i84;
import '../features/account/presentation/bloc/accounts_bloc.dart' as _i87;
import '../features/category/data/data_sources/local/category_data_source.dart'
    as _i11;
import '../features/category/data/model/category_model.dart' as _i8;
import '../features/category/data/repository/category_repository_impl.dart'
    as _i42;
import '../features/category/domain/repository/category_repository.dart'
    as _i41;
import '../features/category/domain/use_case/add_category_use_case.dart'
    as _i88;
import '../features/category/domain/use_case/category_use_case.dart' as _i72;
import '../features/category/domain/use_case/delete_category_use_case.dart'
    as _i49;
import '../features/category/domain/use_case/get_category_use_case.dart'
    as _i62;
import '../features/category/domain/use_case/get_default_categories_use_case.dart'
    as _i65;
import '../features/category/domain/use_case/update_category_use_case.dart'
    as _i85;
import '../features/category/presentation/bloc/category_bloc.dart' as _i93;
import '../features/debit/data/data_sources/debit_local_data_source_impl.dart'
    as _i14;
import '../features/debit/data/models/debit_model.dart' as _i9;
import '../features/debit/data/repository/debit_repository_impl.dart' as _i45;
import '../features/debit/domain/repository/debit_repository.dart' as _i44;
import '../features/debit/domain/use_case/add_debit_use.case.dart' as _i90;
import '../features/debit/domain/use_case/debit_use_case.dart' as _i95;
import '../features/debit/domain/use_case/delete_debit_use_case.dart' as _i52;
import '../features/debit/domain/use_case/get_debit_use_case.dart' as _i64;
import '../features/debit/domain/use_case/update_debit_use.case.dart' as _i86;
import '../features/debit/presentation/cubit/debts_bloc.dart' as _i94;
import '../features/debit_transaction/data/data_source/debit_transactions_data_store.dart'
    as _i15;
import '../features/debit_transaction/data/model/debit_transactions_model.dart'
    as _i6;
import '../features/debit_transaction/data/repository/debit_transaction_repo_impl.dart'
    as _i47;
import '../features/debit_transaction/domain/repository/debit_transaction_repository.dart'
    as _i46;
import '../features/debit_transaction/domain/use_case/add_debit_transaction_use_case.dart'
    as _i89;
import '../features/debit_transaction/domain/use_case/delete_debit_transaction_use_case.dart'
    as _i50;
import '../features/debit_transaction/domain/use_case/delete_debit_transactions_by_debit_id_use_case.dart'
    as _i51;
import '../features/debit_transaction/domain/use_case/get_debit_transactions_use_case.dart'
    as _i63;
import '../features/home/presentation/controller/summary_controller.dart'
    as _i29;
import '../features/home/presentation/pages/home/home_cubit.dart' as _i70;
import '../features/intro/data/repository/country_repository_impl.dart' as _i13;
import '../features/intro/domain/repository/country_repository.dart' as _i12;
import '../features/intro/domain/use_case/get_contries_user_case.dart' as _i17;
import '../features/intro/domain/use_case/get_selected_country_use_case.dart'
    as _i18;
import '../features/intro/domain/use_case/save_selected_country_use_case.dart'
    as _i25;
import '../features/intro/presentation/cubit/country_picker_cubit.dart' as _i43;
import '../features/profile/data/repository/profile_repository_impl.dart'
    as _i24;
import '../features/profile/domain/repository/profile_repository.dart' as _i23;
import '../features/profile/domain/use_case/image_picker_use_case.dart' as _i74;
import '../features/profile/domain/use_case/profile_use_case.dart' as _i79;
import '../features/profile/presentation/cubit/profile_cubit.dart' as _i78;
import '../features/recurring/data/data_sources/local_recurring_data_manager.dart'
    as _i21;
import '../features/recurring/data/data_sources/local_recurring_data_manager_impl.dart'
    as _i22;
import '../features/recurring/data/model/recurring.dart' as _i5;
import '../features/recurring/data/repository/recurring_repository_impl.dart'
    as _i81;
import '../features/recurring/domain/repository/recurring_repository.dart'
    as _i80;
import '../features/recurring/domain/use_case/add_recurring_use_case.dart'
    as _i91;
import '../features/recurring/domain/use_case/recurring_use_case.dart' as _i97;
import '../features/recurring/presentation/cubit/recurring_cubit.dart' as _i96;
import '../features/search/domain/use_case/filter_expense_use_case.dart'
    as _i82;
import '../features/search/presentation/cubit/search_cubit.dart' as _i98;
import '../features/settings/data/authenticate.dart' as _i3;
import '../features/settings/data/file_handler.dart' as _i59;
import '../features/settings/data/repository/csv_export_impl.dart' as _i58;
import '../features/settings/data/repository/json_export_import_impl.dart'
    as _i57;
import '../features/settings/data/repository/settings_repository_impl.dart'
    as _i27;
import '../features/settings/domain/repository/import_export.dart' as _i56;
import '../features/settings/domain/repository/settings_repository.dart'
    as _i26;
import '../features/settings/domain/use_case/csv_file_export_use_case.dart'
    as _i92;
import '../features/settings/domain/use_case/json_file_export_use_case.dart'
    as _i76;
import '../features/settings/domain/use_case/json_file_import_use_case.dart'
    as _i77;
import '../features/settings/domain/use_case/setting_use_case.dart' as _i30;
import '../features/settings/domain/use_case/settings_use_case.dart' as _i28;
import '../features/settings/presentation/cubit/settings_cubit.dart' as _i99;
import '../features/transaction/data/data_sources/local/transaction_data_manager.dart'
    as _i31;
import '../features/transaction/data/model/transaction_model.dart' as _i10;
import '../features/transaction/data/repository/transaction_repository_impl.dart'
    as _i34;
import '../features/transaction/domain/repository/transaction_repository.dart'
    as _i33;
import '../features/transaction/domain/use_case/add_transaction_use_case.dart'
    as _i40;
import '../features/transaction/domain/use_case/delete_transaction_from_category_id_use_case.dart'
    as _i55;
import '../features/transaction/domain/use_case/delete_transaction_use_case.dart'
    as _i53;
import '../features/transaction/domain/use_case/delete_transactions_by_account_id_use_case.dart'
    as _i54;
import '../features/transaction/domain/use_case/get_transaction_use_case.dart'
    as _i66;
import '../features/transaction/domain/use_case/get_transactions_by_account_id_use_case.dart'
    as _i67;
import '../features/transaction/domain/use_case/get_transactions_by_category_id_use_case.dart'
    as _i68;
import '../features/transaction/domain/use_case/get_transactions_use_case.dart'
    as _i69;
import '../features/transaction/domain/use_case/transaction_use_case.dart'
    as _i71;
import '../features/transaction/domain/use_case/update_expense_use_case.dart'
    as _i35;
import '../features/transaction/presentation/bloc/transaction_bloc.dart'
    as _i83;
import 'module/hive_module.dart' as _i100;
import 'module/service_module.dart' as _i101;

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
  await gh.singletonAsync<_i4.Box<_i5.RecurringModel>>(
    () => hiveBoxModule.recurringBox,
    preResolve: true,
  );
  await gh.singletonAsync<_i4.Box<_i6.DebitTransactionsModel>>(
    () => hiveBoxModule.transactionsBox,
    preResolve: true,
  );
  await gh.singletonAsync<_i4.Box<_i7.AccountModel>>(
    () => hiveBoxModule.accountBox,
    preResolve: true,
  );
  await gh.singletonAsync<_i4.Box<_i8.CategoryModel>>(
    () => hiveBoxModule.categoryBox,
    preResolve: true,
  );
  await gh.singletonAsync<_i4.Box<_i9.DebitModel>>(
    () => hiveBoxModule.debtsBox,
    preResolve: true,
  );
  await gh.singletonAsync<_i4.Box<_i10.TransactionModel>>(
    () => hiveBoxModule.expenseBox,
    preResolve: true,
  );
  await gh.singletonAsync<_i4.Box<dynamic>>(
    () => hiveBoxModule.boxDynamic,
    instanceName: 'settings',
    preResolve: true,
  );
  gh.lazySingleton<_i11.CategoryDataSource>(() =>
      _i11.LocalCategoryManagerDataSourceImpl(
          gh<_i4.Box<_i8.CategoryModel>>()));
  gh.lazySingleton<_i12.CountryRepository>(() => _i13.CountryRepositoryImpl(
      gh<_i4.Box<dynamic>>(instanceName: 'settings')));
  gh.lazySingleton<_i14.DebtDataSource>(
      () => _i14.DebitDataSourceImpl(debtBox: gh<_i4.Box<_i9.DebitModel>>()));
  gh.lazySingleton<_i15.DebtTransactionDataSource>(() =>
      _i15.DebitTransactionDataStoreImpl(
          transactionsBox: gh<_i4.Box<_i6.DebitTransactionsModel>>()));
  gh.singleton<_i16.DeviceInfoPlugin>(
      serviceBoxModule.providesDeviceInfoPlugin());
  gh.factory<_i17.GetCountriesUseCase>(
      () => _i17.GetCountriesUseCase(repository: gh<_i12.CountryRepository>()));
  gh.singleton<_i18.GetSelectedCountryUseCase>(
      _i18.GetSelectedCountryUseCase(repository: gh<_i12.CountryRepository>()));
  gh.singleton<_i19.ImagePicker>(serviceBoxModule.providesImagePicker());
  gh.singleton<_i20.InAppReview>(serviceBoxModule.providesInAppReview());
  gh.factory<_i21.LocalRecurringDataManager>(() =>
      _i22.LocalRecurringDataManagerImpl(gh<_i4.Box<_i5.RecurringModel>>()));
  gh.lazySingleton<_i23.ProfileRepository>(() => _i24.ProfileRepositoryImpl(
        gh<_i19.ImagePicker>(),
        gh<_i4.Box<dynamic>>(instanceName: 'settings'),
      ));
  gh.singleton<_i25.SaveSelectedCountryUseCase>(_i25.SaveSelectedCountryUseCase(
      repository: gh<_i12.CountryRepository>()));
  gh.factory<_i26.SettingsRepository>(() => _i27.SettingsRepositoryImpl(
      gh<_i4.Box<dynamic>>(instanceName: 'settings')));
  gh.singleton<_i28.SettingsUseCase>(
      _i28.SettingsUseCase(gh<_i26.SettingsRepository>()));
  gh.singleton<_i29.SummaryController>(
      _i29.SummaryController(gh<_i30.SettingsUseCase>()));
  gh.factory<_i31.TransactionDataSource>(() =>
      _i31.LocalTransactionManagerImpl(gh<_i32.Box<_i10.TransactionModel>>()));
  gh.lazySingleton<_i33.TransactionRepository>(() =>
      _i34.ExpenseRepositoryImpl(dataSource: gh<_i31.TransactionDataSource>()));
  gh.singleton<_i35.UpdateTransactionUseCase>(_i35.UpdateTransactionUseCase(
      expenseRepository: gh<_i33.TransactionRepository>()));
  gh.lazySingleton<_i36.AccountDataSource>(() =>
      _i36.AccountDataSourceImpl(accountBox: gh<_i4.Box<_i7.AccountModel>>()));
  gh.lazySingleton<_i37.AccountRepository>(() =>
      _i38.AccountRepositoryImpl(dataSource: gh<_i36.AccountDataSource>()));
  gh.singleton<_i39.AddAccountUseCase>(
      _i39.AddAccountUseCase(accountRepository: gh<_i37.AccountRepository>()));
  gh.singleton<_i40.AddTransactionUseCase>(_i40.AddTransactionUseCase(
      expenseRepository: gh<_i33.TransactionRepository>()));
  gh.lazySingleton<_i41.CategoryRepository>(() => _i42.CategoryRepositoryImpl(
        dataSources: gh<_i11.CategoryDataSource>(),
        expenseDataManager: gh<_i31.TransactionDataSource>(),
      ));
  gh.factory<_i43.CountryPickerCubit>(() => _i43.CountryPickerCubit(
        gh<_i17.GetCountriesUseCase>(),
        gh<_i18.GetSelectedCountryUseCase>(),
        gh<_i25.SaveSelectedCountryUseCase>(),
      ));
  gh.lazySingleton<_i44.DebitRepository>(
      () => _i45.DebtRepositoryImpl(dataSource: gh<_i14.DebtDataSource>()));
  gh.lazySingleton<_i46.DebitTransactionRepository>(() =>
      _i47.DebitTransactionRepoImpl(
          dataStore: gh<_i15.DebtTransactionDataSource>()));
  gh.singleton<_i48.DeleteAccountUseCase>(_i48.DeleteAccountUseCase(
      accountRepository: gh<_i37.AccountRepository>()));
  gh.singleton<_i49.DeleteCategoryUseCase>(_i49.DeleteCategoryUseCase(
      categoryRepository: gh<_i41.CategoryRepository>()));
  gh.singleton<_i50.DeleteDebitTransactionUseCase>(
      _i50.DeleteDebitTransactionUseCase(
          debtRepository: gh<_i46.DebitTransactionRepository>()));
  gh.singleton<_i51.DeleteDebitTransactionsByDebitIdUseCase>(
      _i51.DeleteDebitTransactionsByDebitIdUseCase(
          debtRepository: gh<_i46.DebitTransactionRepository>()));
  gh.singleton<_i52.DeleteDebitUseCase>(
      _i52.DeleteDebitUseCase(debtRepository: gh<_i44.DebitRepository>()));
  gh.singleton<_i53.DeleteTransactionUseCase>(_i53.DeleteTransactionUseCase(
      expenseRepository: gh<_i33.TransactionRepository>()));
  gh.singleton<_i54.DeleteTransactionsByAccountIdUseCase>(
      _i54.DeleteTransactionsByAccountIdUseCase(
          expenseRepository: gh<_i33.TransactionRepository>()));
  gh.singleton<_i55.DeleteTransactionsByCategoryIdUseCase>(
      _i55.DeleteTransactionsByCategoryIdUseCase(
          transactionRepository: gh<_i33.TransactionRepository>()));
  gh.lazySingleton<_i56.Export>(
    () => _i57.JSONExportImpl(
      gh<_i36.AccountDataSource>(),
      gh<_i11.CategoryDataSource>(),
      gh<_i31.TransactionDataSource>(),
      gh<_i14.DebtDataSource>(),
      gh<_i15.DebtTransactionDataSource>(),
    ),
    instanceName: 'json_export',
  );
  gh.lazySingleton<_i56.Export>(
    () => _i58.CSVExport(
      gh<_i16.DeviceInfoPlugin>(),
      gh<_i36.AccountDataSource>(),
      gh<_i11.CategoryDataSource>(),
      gh<_i31.TransactionDataSource>(),
    ),
    instanceName: 'csv',
  );
  gh.lazySingleton<_i59.FileHandler>(() => _i59.FileHandler(
        gh<_i16.DeviceInfoPlugin>(),
        gh<_i36.AccountDataSource>(),
        gh<_i11.CategoryDataSource>(),
        gh<_i31.TransactionDataSource>(),
      ));
  gh.singleton<_i60.GetAccountUseCase>(
      _i60.GetAccountUseCase(accountRepository: gh<_i37.AccountRepository>()));
  gh.singleton<_i61.GetAccountsUseCase>(
      _i61.GetAccountsUseCase(accountRepository: gh<_i37.AccountRepository>()));
  gh.singleton<_i62.GetCategoryUseCase>(_i62.GetCategoryUseCase(
      categoryRepository: gh<_i41.CategoryRepository>()));
  gh.singleton<_i63.GetDebitTransactionsUseCase>(
      _i63.GetDebitTransactionsUseCase(
          debtRepository: gh<_i46.DebitTransactionRepository>()));
  gh.singleton<_i64.GetDebitUseCase>(
      _i64.GetDebitUseCase(debtRepository: gh<_i44.DebitRepository>()));
  gh.singleton<_i65.GetDefaultCategoriesUseCase>(
      _i65.GetDefaultCategoriesUseCase(
          categoryRepository: gh<_i41.CategoryRepository>()));
  gh.singleton<_i66.GetTransactionUseCase>(_i66.GetTransactionUseCase(
      transactionRepository: gh<_i33.TransactionRepository>()));
  gh.singleton<_i67.GetTransactionsByAccountIdUseCase>(
      _i67.GetTransactionsByAccountIdUseCase(
          expenseRepository: gh<_i33.TransactionRepository>()));
  gh.singleton<_i68.GetTransactionsByCategoryIdUseCase>(
      _i68.GetTransactionsByCategoryIdUseCase(
          expenseRepository: gh<_i33.TransactionRepository>()));
  gh.singleton<_i69.GetTransactionsUseCase>(_i69.GetTransactionsUseCase(
      expenseRepository: gh<_i33.TransactionRepository>()));
  gh.factory<_i70.HomeCubit>(() => _i70.HomeCubit(
        gh<_i71.GetTransactionsUseCase>(),
        gh<_i72.GetDefaultCategoriesUseCase>(),
        gh<_i73.GetAccountUseCase>(),
        gh<_i72.GetCategoryUseCase>(),
        gh<_i71.GetTransactionsByCategoryIdUseCase>(),
      ));
  gh.singleton<_i74.ImagePickerUseCase>(
      _i74.ImagePickerUseCase(gh<_i23.ProfileRepository>()));
  gh.lazySingleton<_i56.Import>(
    () => _i57.JSONImportImpl(
      gh<_i16.DeviceInfoPlugin>(),
      gh<_i36.AccountDataSource>(),
      gh<_i11.CategoryDataSource>(),
      gh<_i31.TransactionDataSource>(),
      gh<_i14.DebtDataSource>(),
      gh<_i15.DebtTransactionDataSource>(),
    ),
    instanceName: 'json_import',
  );
  gh.singleton<_i75.InApp>(_i75.InApp(gh<_i20.InAppReview>()));
  gh.singleton<_i76.JSONFileExportUseCase>(_i76.JSONFileExportUseCase(
    gh<_i26.SettingsRepository>(),
    gh<_i56.Export>(instanceName: 'json_export'),
  ));
  gh.singleton<_i77.JSONFileImportUseCase>(_i77.JSONFileImportUseCase(
    gh<_i26.SettingsRepository>(),
    gh<_i56.Import>(instanceName: 'json_import'),
  ));
  gh.factory<_i78.ProfileCubit>(() => _i78.ProfileCubit(
        gh<_i79.ImagePickerUseCase>(),
        gh<_i4.Box<dynamic>>(instanceName: 'settings'),
      ));
  gh.lazySingleton<_i80.RecurringRepository>(() => _i81.RecurringRepositoryImpl(
        gh<_i21.LocalRecurringDataManager>(),
        gh<_i31.TransactionDataSource>(),
      ));
  gh.singleton<_i82.SearchUseCase>(
      _i82.SearchUseCase(gh<_i33.TransactionRepository>()));
  gh.factory<_i83.TransactionBloc>(() => _i83.TransactionBloc(
        gh<_i28.SettingsUseCase>(),
        getTransactionUseCase: gh<_i71.GetTransactionUseCase>(),
        accountUseCase: gh<_i73.GetAccountUseCase>(),
        addTransactionUseCase: gh<_i71.AddTransactionUseCase>(),
        deleteTransactionUseCase: gh<_i71.DeleteTransactionUseCase>(),
        updateTransactionUseCase: gh<_i71.UpdateTransactionUseCase>(),
        accountsUseCase: gh<_i73.GetAccountsUseCase>(),
        getDefaultCategoriesUseCase: gh<_i72.GetDefaultCategoriesUseCase>(),
      ));
  gh.singleton<_i84.UpdateAccountUseCase>(_i84.UpdateAccountUseCase(
      accountRepository: gh<_i37.AccountRepository>()));
  gh.singleton<_i85.UpdateCategoryUseCase>(_i85.UpdateCategoryUseCase(
      categoryRepository: gh<_i41.CategoryRepository>()));
  gh.singleton<_i86.UpdateDebitUseCase>(
      _i86.UpdateDebitUseCase(debtRepository: gh<_i44.DebitRepository>()));
  gh.factory<_i87.AccountBloc>(() => _i87.AccountBloc(
        getAccountUseCase: gh<_i73.GetAccountUseCase>(),
        deleteAccountUseCase: gh<_i73.DeleteAccountUseCase>(),
        getTransactionsByAccountIdUseCase:
            gh<_i71.GetTransactionsByAccountIdUseCase>(),
        addAccountUseCase: gh<_i73.AddAccountUseCase>(),
        getCategoryUseCase: gh<_i62.GetCategoryUseCase>(),
        deleteExpensesFromAccountIdUseCase:
            gh<_i71.DeleteTransactionsByAccountIdUseCase>(),
        updateAccountUseCase: gh<_i73.UpdateAccountUseCase>(),
      ));
  gh.singleton<_i88.AddCategoryUseCase>(_i88.AddCategoryUseCase(
      categoryRepository: gh<_i41.CategoryRepository>()));
  gh.singleton<_i89.AddDebitTransactionUseCase>(_i89.AddDebitTransactionUseCase(
      debtRepository: gh<_i46.DebitTransactionRepository>()));
  gh.singleton<_i90.AddDebitUseCase>(
      _i90.AddDebitUseCase(debtRepository: gh<_i44.DebitRepository>()));
  gh.singleton<_i91.AddRecurringUseCase>(
      _i91.AddRecurringUseCase(gh<_i80.RecurringRepository>()));
  gh.singleton<_i92.CSVFileExportUseCase>(_i92.CSVFileExportUseCase(
    gh<_i26.SettingsRepository>(),
    gh<_i56.Export>(instanceName: 'csv'),
  ));
  gh.factory<_i93.CategoryBloc>(() => _i93.CategoryBloc(
        getCategoryUseCase: gh<_i72.GetCategoryUseCase>(),
        addCategoryUseCase: gh<_i72.AddCategoryUseCase>(),
        deleteCategoryUseCase: gh<_i72.DeleteCategoryUseCase>(),
        deleteExpensesFromCategoryIdUseCase:
            gh<_i71.DeleteTransactionsByCategoryIdUseCase>(),
        updateCategoryUseCase: gh<_i72.UpdateCategoryUseCase>(),
      ));
  gh.factory<_i94.DebitBloc>(() => _i94.DebitBloc(
        addDebtUseCase: gh<_i95.AddDebitUseCase>(),
        getDebtUseCase: gh<_i95.GetDebitUseCase>(),
        getTransactionsUseCase: gh<_i63.GetDebitTransactionsUseCase>(),
        addTransactionUseCase: gh<_i89.AddDebitTransactionUseCase>(),
        updateDebtUseCase: gh<_i95.UpdateDebitUseCase>(),
        deleteDebtUseCase: gh<_i95.DeleteDebitUseCase>(),
        deleteDebitTransactionUseCase: gh<_i50.DeleteDebitTransactionUseCase>(),
        deleteDebitTransactionsByDebitIdUseCase:
            gh<_i51.DeleteDebitTransactionsByDebitIdUseCase>(),
      ));
  gh.factory<_i96.RecurringCubit>(
      () => _i96.RecurringCubit(gh<_i97.AddRecurringUseCase>()));
  gh.factory<_i98.SearchCubit>(
      () => _i98.SearchCubit(gh<_i82.SearchUseCase>()));
  gh.factory<_i99.SettingCubit>(() => _i99.SettingCubit(
        gh<_i71.GetTransactionsUseCase>(),
        gh<_i72.GetDefaultCategoriesUseCase>(),
        gh<_i71.UpdateTransactionUseCase>(),
        gh<_i30.JSONFileImportUseCase>(),
        gh<_i30.JSONFileExportUseCase>(),
        gh<_i30.SettingsUseCase>(),
        gh<_i30.CSVFileExportUseCase>(),
      ));
  return getIt;
}

class _$HiveBoxModule extends _i100.HiveBoxModule {}

class _$ServiceBoxModule extends _i101.ServiceBoxModule {}
