// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:device_info_plus/device_info_plus.dart' as _i19;
import 'package:event_bus_plus/event_bus_plus.dart' as _i20;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hive_flutter/adapters.dart' as _i4;
import 'package:hive_flutter/hive_flutter.dart' as _i32;
import 'package:image_picker/image_picker.dart' as _i26;
import 'package:in_app_review/in_app_review.dart' as _i27;
import 'package:in_app_update/in_app_update.dart' as _i28;
import 'package:injectable/injectable.dart' as _i2;

import '../core/data/data_manager.dart' as _i15;
import '../features/account/data/model/account_model.dart' as _i8;
import '../features/account/data/repository/account_repository_impl.dart'
    as _i49;
import '../features/account/domain/repository/account_repository.dart' as _i48;
import '../features/account/domain/use_case/account_use_case.dart' as _i81;
import '../features/account/domain/use_case/add_account_use_case.dart' as _i50;
import '../features/account/domain/use_case/delete_account_use_case.dart'
    as _i60;
import '../features/account/domain/use_case/get_account_use_case.dart' as _i68;
import '../features/account/domain/use_case/get_accounts_use_case.dart' as _i69;
import '../features/account/domain/use_case/update_account_use_case.dart'
    as _i94;
import '../features/account/presentation/bloc/accounts_bloc.dart' as _i96;
import '../features/category/data/data_sources/category_manager.dart' as _i11;
import '../features/category/data/data_sources/local/category_data_source.dart'
    as _i12;
import '../features/category/data/model/category_model.dart' as _i7;
import '../features/category/data/repository/category_repository_impl.dart'
    as _i56;
import '../features/category/domain/repository/category_repository.dart'
    as _i55;
import '../features/category/domain/use_case/add_category_use_case.dart'
    as _i97;
import '../features/category/domain/use_case/category_use_case.dart' as _i80;
import '../features/category/domain/use_case/delete_category_use_case.dart'
    as _i61;
import '../features/category/domain/use_case/get_categories_use_case.dart'
    as _i70;
import '../features/category/domain/use_case/get_category_use_case.dart'
    as _i71;
import '../features/category/domain/use_case/get_default_categories_use_case.dart'
    as _i73;
import '../features/category/domain/use_case/update_category_use_case.dart'
    as _i95;
import '../features/category/presentation/bloc/category_bloc.dart' as _i99;
import '../features/country_picker/data/repository/country_repository_impl.dart'
    as _i14;
import '../features/country_picker/domain/repository/country_repository.dart'
    as _i13;
import '../features/country_picker/domain/use_case/get_contries_user_case.dart'
    as _i24;
import '../features/debit/data/models/debit_model.dart' as _i6;
import '../features/debit/data/repository/debit_repository_impl.dart' as _i17;
import '../features/debit/domain/repository/debit_repository.dart' as _i16;
import '../features/debit/domain/use_case/add_debit_use.case.dart' as _i51;
import '../features/debit/domain/use_case/debit_use_case.dart' as _i101;
import '../features/debit/domain/use_case/delete_debit_use_case.dart' as _i18;
import '../features/debit/domain/use_case/get_debit_use_case.dart' as _i25;
import '../features/debit/domain/use_case/update_debit_use.case.dart' as _i46;
import '../features/debit/presentation/cubit/debts_bloc.dart' as _i100;
import '../features/debit_transaction/data/data_source/local/transaction_manager_impl.dart'
    as _i43;
import '../features/debit_transaction/data/data_source/transaction_data_manager.dart'
    as _i42;
import '../features/debit_transaction/data/model/debit_transactions_model.dart'
    as _i5;
import '../features/debit_transaction/data/repository/debit_transaction_impl.dart'
    as _i59;
import '../features/debit_transaction/domain/repository/debit_transaction_repository.dart'
    as _i58;
import '../features/debit_transaction/domain/use_case/add_debit_transaction_use_case.dart'
    as _i98;
import '../features/debit_transaction/domain/use_case/debit_transaction_use_case.dart'
    as _i102;
import '../features/debit_transaction/domain/use_case/delete_debit_transaction_use_case.dart'
    as _i62;
import '../features/debit_transaction/domain/use_case/delete_debit_transactions_by_debit_id_use_case.dart'
    as _i63;
import '../features/debit_transaction/domain/use_case/get_debit_transactions_use_case.dart'
    as _i72;
import '../features/home/presentation/bloc/home/home_bloc.dart' as _i78;
import '../features/home/presentation/controller/summary_controller.dart'
    as _i40;
import '../features/home/presentation/cubit/overview/overview_cubit.dart'
    as _i85;
import '../features/home/presentation/cubit/summary/summary_cubit.dart' as _i92;
import '../features/intro/presentation/cubit/country_picker_cubit.dart' as _i57;
import '../features/profile/data/repository/profile_repository_impl.dart'
    as _i34;
import '../features/profile/domain/repository/profile_repository.dart' as _i33;
import '../features/profile/domain/use_case/image_picker_use_case.dart' as _i82;
import '../features/profile/domain/use_case/profile_use_case.dart' as _i87;
import '../features/profile/presentation/cubit/profile_cubit.dart' as _i86;
import '../features/recurring/data/data_sources/local_recurring_data_manager.dart'
    as _i29;
import '../features/recurring/data/data_sources/local_recurring_data_manager_impl.dart'
    as _i30;
import '../features/recurring/data/model/recurring.dart' as _i10;
import '../features/recurring/data/repository/recurring_repository_impl.dart'
    as _i36;
import '../features/recurring/domain/repository/recurring_repository.dart'
    as _i35;
import '../features/recurring/domain/use_case/add_recurring_use_case.dart'
    as _i52;
import '../features/recurring/domain/use_case/recurring_use_case.dart' as _i89;
import '../features/recurring/presentation/cubit/recurring_cubit.dart' as _i88;
import '../features/search/domain/use_case/filter_expense_use_case.dart'
    as _i90;
import '../features/search/presentation/cubit/search_cubit.dart' as _i103;
import '../features/settings/data/authenticate.dart' as _i3;
import '../features/settings/data/file_handler.dart' as _i23;
import '../features/settings/data/repository/csv_export_impl.dart' as _i22;
import '../features/settings/data/repository/json_export_import_impl.dart'
    as _i67;
import '../features/settings/data/repository/settings_repository_impl.dart'
    as _i38;
import '../features/settings/domain/repository/import_export.dart' as _i21;
import '../features/settings/domain/repository/settings_repository.dart'
    as _i37;
import '../features/settings/domain/use_case/csv_file_export_use_case.dart'
    as _i54;
import '../features/settings/domain/use_case/json_file_export_use_case.dart'
    as _i83;
import '../features/settings/domain/use_case/json_file_import_use_case.dart'
    as _i84;
import '../features/settings/domain/use_case/setting_use_case.dart' as _i41;
import '../features/settings/domain/use_case/settings_use_case.dart' as _i39;
import '../features/settings/presentation/cubit/settings_cubit.dart' as _i91;
import '../features/transaction/data/data_sources/local/transaction_data_manager.dart'
    as _i31;
import '../features/transaction/data/model/transaction_model.dart' as _i9;
import '../features/transaction/data/repository/transaction_repository_impl.dart'
    as _i45;
import '../features/transaction/domain/repository/transaction_repository.dart'
    as _i44;
import '../features/transaction/domain/use_case/add_transaction_use_case.dart'
    as _i53;
import '../features/transaction/domain/use_case/delete_transaction_from_category_id_use_case.dart'
    as _i66;
import '../features/transaction/domain/use_case/delete_transaction_use_case.dart'
    as _i64;
import '../features/transaction/domain/use_case/delete_transactions_by_account_id_use_case.dart'
    as _i65;
import '../features/transaction/domain/use_case/get_transaction_use_case.dart'
    as _i74;
import '../features/transaction/domain/use_case/get_transactions_by_account_id_use_case.dart'
    as _i75;
import '../features/transaction/domain/use_case/get_transactions_by_category_id_use_case.dart'
    as _i76;
import '../features/transaction/domain/use_case/get_transactions_use_case.dart'
    as _i77;
import '../features/transaction/domain/use_case/transaction_use_case.dart'
    as _i79;
import '../features/transaction/domain/use_case/update_expense_use_case.dart'
    as _i47;
import '../features/transaction/presentation/bloc/transaction_bloc.dart'
    as _i93;
import 'module/hive_module.dart' as _i104;
import 'module/service_module.dart' as _i105;

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
  final dataManagerModule = _$DataManagerModule();
  final serviceBoxModule = _$ServiceBoxModule();
  gh.singleton<_i3.Authenticate>(_i3.Authenticate());
  await gh.singletonAsync<_i4.Box<_i5.DebitTransactionsModel>>(
    () => hiveBoxModule.transactionsBox,
    preResolve: true,
  );
  await gh.singletonAsync<_i4.Box<_i6.DebitModel>>(
    () => hiveBoxModule.debtsBox,
    preResolve: true,
  );
  await gh.singletonAsync<_i4.Box<_i7.CategoryModel>>(
    () => hiveBoxModule.categoryBox,
    preResolve: true,
  );
  await gh.singletonAsync<_i4.Box<_i8.AccountModel>>(
    () => hiveBoxModule.accountBox,
    preResolve: true,
  );
  await gh.singletonAsync<_i4.Box<_i9.TransactionModel>>(
    () => hiveBoxModule.expenseBox,
    preResolve: true,
  );
  await gh.singletonAsync<_i4.Box<dynamic>>(
    () => hiveBoxModule.boxDynamic,
    instanceName: 'settings',
    preResolve: true,
  );
  await gh.singletonAsync<_i4.Box<_i10.RecurringModel>>(
    () => hiveBoxModule.recurringBox,
    preResolve: true,
  );
  gh.singleton<_i11.CategoryManager>(_i12.LocalCategoryManagerDataSourceImpl(
      gh<_i4.Box<_i7.CategoryModel>>()));
  gh.singleton<_i13.CountryRepository>(_i14.CountryRepositoryImpl());
  gh.singleton<_i15.DataManager<_i9.TransactionModel>>(
      dataManagerModule.providerTransactionModel());
  gh.singleton<_i15.DataManager<_i5.DebitTransactionsModel>>(
      dataManagerModule.providerDebitTransactionsModel());
  gh.singleton<_i15.DataManager<_i6.DebitModel>>(
      dataManagerModule.providerDebitModel());
  gh.singleton<_i15.DataManager<_i7.CategoryModel>>(
      dataManagerModule.providerCategoryModel());
  gh.singleton<_i15.DataManager<_i8.AccountModel>>(
      dataManagerModule.providerAccountModel());
  gh.singleton<_i16.DebitRepository>(
      _i17.DebtRepositoryImpl(gh<_i15.DataManager<_i6.DebitModel>>()));
  gh.singleton<_i18.DeleteDebitUseCase>(
      _i18.DeleteDebitUseCase(debtRepository: gh<_i16.DebitRepository>()));
  gh.singleton<_i19.DeviceInfoPlugin>(
      serviceBoxModule.providesDeviceInfoPlugin());
  gh.singleton<_i20.EventBus>(serviceBoxModule.providerEventBus());
  gh.lazySingleton<_i21.Export>(
    () => _i22.CSVExport(
      gh<_i19.DeviceInfoPlugin>(),
      gh<_i15.DataManager<_i8.AccountModel>>(),
      gh<_i15.DataManager<_i7.CategoryModel>>(),
      gh<_i15.DataManager<_i9.TransactionModel>>(),
    ),
    instanceName: 'csv',
  );
  gh.singleton<_i23.FileHandler>(_i23.FileHandler(
    gh<_i19.DeviceInfoPlugin>(),
    gh<_i15.DataManager<_i8.AccountModel>>(),
    gh<_i15.DataManager<_i7.CategoryModel>>(),
    gh<_i15.DataManager<_i9.TransactionModel>>(),
  ));
  gh.factory<_i24.GetCountriesUseCase>(
      () => _i24.GetCountriesUseCase(repository: gh<_i13.CountryRepository>()));
  gh.singleton<_i25.GetDebitUseCase>(
      _i25.GetDebitUseCase(debtRepository: gh<_i16.DebitRepository>()));
  gh.singleton<_i26.ImagePicker>(serviceBoxModule.providesImagePicker());
  gh.singleton<_i27.InAppReview>(serviceBoxModule.providesInAppReview());
  gh.singleton<_i28.InAppUpdate>(serviceBoxModule.providesInAppUpdate());
  gh.factory<_i29.LocalRecurringDataManager>(() =>
      _i30.LocalRecurringDataManagerImpl(gh<_i4.Box<_i10.RecurringModel>>()));
  gh.factory<_i31.LocalTransactionManager>(() =>
      _i31.LocalTransactionManagerImpl(gh<_i32.Box<_i9.TransactionModel>>()));
  gh.singleton<_i33.ProfileRepository>(_i34.ProfileRepositoryImpl(
    gh<_i26.ImagePicker>(),
    gh<_i4.Box<dynamic>>(instanceName: 'settings'),
  ));
  gh.singleton<_i35.RecurringRepository>(_i36.RecurringRepositoryImpl(
    gh<_i29.LocalRecurringDataManager>(),
    gh<_i31.LocalTransactionManager>(),
  ));
  gh.factory<_i37.SettingsRepository>(() => _i38.SettingsRepositoryImpl(
      gh<_i4.Box<dynamic>>(instanceName: 'settings')));
  gh.singleton<_i39.SettingsUseCase>(
      _i39.SettingsUseCase(gh<_i37.SettingsRepository>()));
  gh.singleton<_i40.SummaryController>(
      _i40.SummaryController(gh<_i41.SettingsUseCase>()));
  gh.singleton<_i42.TransactionDataManager>(
      _i43.LocalTransactionDataManagerImpl(
          box: gh<_i4.Box<_i5.DebitTransactionsModel>>()));
  gh.singleton<_i44.TransactionRepository>(_i45.ExpenseRepositoryImpl(
    gh<_i15.DataManager<_i9.TransactionModel>>(),
    gh<_i31.LocalTransactionManager>(),
    gh<_i15.DataManager<_i7.CategoryModel>>(),
    gh<_i15.DataManager<_i8.AccountModel>>(),
  ));
  gh.singleton<_i46.UpdateDebitUseCase>(
      _i46.UpdateDebitUseCase(debtRepository: gh<_i16.DebitRepository>()));
  gh.singleton<_i47.UpdateTransactionUseCase>(_i47.UpdateTransactionUseCase(
      expenseRepository: gh<_i44.TransactionRepository>()));
  gh.singleton<_i48.AccountRepository>(_i49.AccountRepositoryImpl(
      dataManager: gh<_i15.DataManager<_i8.AccountModel>>()));
  gh.singleton<_i50.AddAccountUseCase>(
      _i50.AddAccountUseCase(accountRepository: gh<_i48.AccountRepository>()));
  gh.singleton<_i51.AddDebitUseCase>(
      _i51.AddDebitUseCase(debtRepository: gh<_i16.DebitRepository>()));
  gh.singleton<_i52.AddRecurringUseCase>(
      _i52.AddRecurringUseCase(gh<_i35.RecurringRepository>()));
  gh.singleton<_i53.AddTransactionUseCase>(_i53.AddTransactionUseCase(
      expenseRepository: gh<_i44.TransactionRepository>()));
  gh.singleton<_i54.CSVFileExportUseCase>(_i54.CSVFileExportUseCase(
    gh<_i37.SettingsRepository>(),
    gh<_i21.Export>(instanceName: 'csv'),
  ));
  gh.singleton<_i55.CategoryRepository>(_i56.CategoryRepositoryImpl(
    gh<_i11.CategoryManager>(),
    gh<_i15.DataManager<_i7.CategoryModel>>(),
  ));
  gh.factory<_i57.CountryPickerCubit>(() => _i57.CountryPickerCubit(
        gh<_i24.GetCountriesUseCase>(),
        gh<_i41.SettingsUseCase>(),
      ));
  gh.singleton<_i58.DebitTransactionRepository>(
      _i59.DebitTransactionRepositoryImpl(
    gh<_i42.TransactionDataManager>(),
    gh<_i15.DataManager<_i5.DebitTransactionsModel>>(),
  ));
  gh.singleton<_i60.DeleteAccountUseCase>(_i60.DeleteAccountUseCase(
      accountRepository: gh<_i48.AccountRepository>()));
  gh.singleton<_i61.DeleteCategoryUseCase>(_i61.DeleteCategoryUseCase(
      categoryRepository: gh<_i55.CategoryRepository>()));
  gh.singleton<_i62.DeleteDebitTransactionUseCase>(
      _i62.DeleteDebitTransactionUseCase(
          debtRepository: gh<_i58.DebitTransactionRepository>()));
  gh.singleton<_i63.DeleteDebitTransactionsByDebitIdUseCase>(
      _i63.DeleteDebitTransactionsByDebitIdUseCase(
          debtRepository: gh<_i58.DebitTransactionRepository>()));
  gh.singleton<_i64.DeleteTransactionUseCase>(_i64.DeleteTransactionUseCase(
      expenseRepository: gh<_i44.TransactionRepository>()));
  gh.singleton<_i65.DeleteTransactionsByAccountIdUseCase>(
      _i65.DeleteTransactionsByAccountIdUseCase(
          expenseRepository: gh<_i44.TransactionRepository>()));
  gh.singleton<_i66.DeleteTransactionsByCategoryIdUseCase>(
      _i66.DeleteTransactionsByCategoryIdUseCase(
          transactionRepository: gh<_i44.TransactionRepository>()));
  gh.lazySingleton<_i21.Export>(
    () => _i67.JSONExportImpl(
      gh<_i15.DataManager<_i8.AccountModel>>(),
      gh<_i15.DataManager<_i7.CategoryModel>>(),
      gh<_i15.DataManager<_i9.TransactionModel>>(),
      gh<_i15.DataManager<_i6.DebitModel>>(),
      gh<_i42.TransactionDataManager>(),
    ),
    instanceName: 'json_export',
  );
  gh.singleton<_i68.GetAccountUseCase>(
      _i68.GetAccountUseCase(accountRepository: gh<_i48.AccountRepository>()));
  gh.singleton<_i69.GetAccountsUseCase>(
      _i69.GetAccountsUseCase(accountRepository: gh<_i48.AccountRepository>()));
  gh.singleton<_i70.GetCategoriesUseCase>(_i70.GetCategoriesUseCase(
      categoryRepository: gh<_i55.CategoryRepository>()));
  gh.singleton<_i71.GetCategoryUseCase>(_i71.GetCategoryUseCase(
      categoryRepository: gh<_i55.CategoryRepository>()));
  gh.singleton<_i72.GetDebitTransactionsUseCase>(
      _i72.GetDebitTransactionsUseCase(
          debtRepository: gh<_i58.DebitTransactionRepository>()));
  gh.singleton<_i73.GetDefaultCategoriesUseCase>(
      _i73.GetDefaultCategoriesUseCase(
          categoryRepository: gh<_i55.CategoryRepository>()));
  gh.singleton<_i74.GetTransactionUseCase>(_i74.GetTransactionUseCase(
      transactionRepository: gh<_i44.TransactionRepository>()));
  gh.singleton<_i75.GetTransactionsByAccountIdUseCase>(
      _i75.GetTransactionsByAccountIdUseCase(
          expenseRepository: gh<_i44.TransactionRepository>()));
  gh.singleton<_i76.GetTransactionsByCategoryIdUseCase>(
      _i76.GetTransactionsByCategoryIdUseCase(
          expenseRepository: gh<_i44.TransactionRepository>()));
  gh.singleton<_i77.GetTransactionsUseCase>(_i77.GetTransactionsUseCase(
      expenseRepository: gh<_i44.TransactionRepository>()));
  gh.factory<_i78.HomeBloc>(() => _i78.HomeBloc(
        gh<_i79.GetTransactionsUseCase>(),
        gh<_i80.GetDefaultCategoriesUseCase>(),
        gh<_i81.GetAccountUseCase>(),
        gh<_i80.GetCategoryUseCase>(),
        gh<_i79.GetTransactionsByCategoryIdUseCase>(),
      ));
  gh.singleton<_i82.ImagePickerUseCase>(
      _i82.ImagePickerUseCase(gh<_i33.ProfileRepository>()));
  gh.lazySingleton<_i21.Import>(
    () => _i67.JSONImportImpl(
      gh<_i19.DeviceInfoPlugin>(),
      gh<_i15.DataManager<_i8.AccountModel>>(),
      gh<_i15.DataManager<_i7.CategoryModel>>(),
      gh<_i15.DataManager<_i9.TransactionModel>>(),
      gh<_i42.TransactionDataManager>(),
      gh<_i15.DataManager<_i6.DebitModel>>(),
    ),
    instanceName: 'json_import',
  );
  gh.singleton<_i83.JSONFileExportUseCase>(_i83.JSONFileExportUseCase(
    gh<_i37.SettingsRepository>(),
    gh<_i21.Export>(instanceName: 'json_export'),
  ));
  gh.singleton<_i84.JSONFileImportUseCase>(_i84.JSONFileImportUseCase(
    gh<_i37.SettingsRepository>(),
    gh<_i21.Import>(instanceName: 'json_import'),
  ));
  gh.factory<_i85.OverviewCubit>(() => _i85.OverviewCubit(
        gh<_i80.GetCategoryUseCase>(),
        gh<_i80.GetDefaultCategoriesUseCase>(),
        gh<_i79.GetTransactionsByCategoryIdUseCase>(),
      ));
  gh.factory<_i86.ProfileCubit>(() => _i86.ProfileCubit(
        gh<_i87.ImagePickerUseCase>(),
        gh<_i4.Box<dynamic>>(instanceName: 'settings'),
      ));
  gh.factory<_i88.RecurringCubit>(
      () => _i88.RecurringCubit(gh<_i89.AddRecurringUseCase>()));
  gh.singleton<_i90.SearchUseCase>(
      _i90.SearchUseCase(gh<_i44.TransactionRepository>()));
  gh.factory<_i91.SettingCubit>(() => _i91.SettingCubit(
        gh<_i79.GetTransactionsUseCase>(),
        gh<_i80.GetDefaultCategoriesUseCase>(),
        gh<_i79.UpdateTransactionUseCase>(),
        gh<_i41.JSONFileImportUseCase>(),
        gh<_i41.JSONFileExportUseCase>(),
        gh<_i41.SettingsUseCase>(),
        gh<_i41.CSVFileExportUseCase>(),
      ));
  gh.factory<_i92.SummaryCubit>(() => _i92.SummaryCubit(
        gh<_i79.GetTransactionsByAccountIdUseCase>(),
        gh<_i81.GetAccountsUseCase>(),
        gh<_i4.Box<_i8.AccountModel>>(),
      ));
  gh.factory<_i93.TransactionBloc>(() => _i93.TransactionBloc(
        gh<_i39.SettingsUseCase>(),
        gh<_i20.EventBus>(),
        getTransactionUseCase: gh<_i79.GetTransactionUseCase>(),
        accountUseCase: gh<_i81.GetAccountUseCase>(),
        addTransactionUseCase: gh<_i79.AddTransactionUseCase>(),
        deleteTransactionUseCase: gh<_i79.DeleteTransactionUseCase>(),
        updateTransactionUseCase: gh<_i79.UpdateTransactionUseCase>(),
        accountsUseCase: gh<_i81.GetAccountsUseCase>(),
        getDefaultCategoriesUseCase: gh<_i80.GetDefaultCategoriesUseCase>(),
      ));
  gh.singleton<_i94.UpdateAccountUseCase>(_i94.UpdateAccountUseCase(
      accountRepository: gh<_i48.AccountRepository>()));
  gh.singleton<_i95.UpdateCategoryUseCase>(_i95.UpdateCategoryUseCase(
      categoryRepository: gh<_i55.CategoryRepository>()));
  gh.factory<_i96.AccountBloc>(() => _i96.AccountBloc(
        gh<_i81.GetAccountUseCase>(),
        gh<_i81.DeleteAccountUseCase>(),
        gh<_i79.GetTransactionsByAccountIdUseCase>(),
        gh<_i81.AddAccountUseCase>(),
        gh<_i71.GetCategoryUseCase>(),
        gh<_i79.DeleteTransactionsByAccountIdUseCase>(),
        gh<_i81.UpdateAccountUseCase>(),
        gh<_i24.GetCountriesUseCase>(),
      ));
  gh.singleton<_i97.AddCategoryUseCase>(_i97.AddCategoryUseCase(
      categoryRepository: gh<_i55.CategoryRepository>()));
  gh.singleton<_i98.AddDebitTransactionUseCase>(_i98.AddDebitTransactionUseCase(
      debtRepository: gh<_i58.DebitTransactionRepository>()));
  gh.factory<_i99.CategoryBloc>(() => _i99.CategoryBloc(
        getCategoryUseCase: gh<_i80.GetCategoryUseCase>(),
        addCategoryUseCase: gh<_i80.AddCategoryUseCase>(),
        deleteCategoryUseCase: gh<_i80.DeleteCategoryUseCase>(),
        deleteExpensesFromCategoryIdUseCase:
            gh<_i79.DeleteTransactionsByCategoryIdUseCase>(),
        updateCategoryUseCase: gh<_i80.UpdateCategoryUseCase>(),
      ));
  gh.factory<_i100.DebitBloc>(() => _i100.DebitBloc(
        addDebtUseCase: gh<_i101.AddDebitUseCase>(),
        getDebtUseCase: gh<_i101.GetDebitUseCase>(),
        getTransactionsUseCase: gh<_i102.GetDebitTransactionsUseCase>(),
        addTransactionUseCase: gh<_i102.AddDebitTransactionUseCase>(),
        updateDebtUseCase: gh<_i101.UpdateDebitUseCase>(),
        deleteDebtUseCase: gh<_i101.DeleteDebitUseCase>(),
        deleteDebitTransactionUseCase:
            gh<_i102.DeleteDebitTransactionUseCase>(),
        deleteDebitTransactionsByDebitIdUseCase:
            gh<_i102.DeleteDebitTransactionsByDebitIdUseCase>(),
      ));
  gh.factory<_i103.SearchCubit>(
      () => _i103.SearchCubit(gh<_i90.SearchUseCase>()));
  return getIt;
}

class _$HiveBoxModule extends _i104.HiveBoxModule {}

class _$DataManagerModule extends _i105.DataManagerModule {}

class _$ServiceBoxModule extends _i105.ServiceBoxModule {}
