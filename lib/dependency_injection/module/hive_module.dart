import 'package:flutter/foundation.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:injectable/injectable.dart';
import 'package:paisa/core/common_enum.dart';
import 'package:paisa/features/account/data/model/account_model.dart';
import 'package:paisa/features/category/data/model/category_model.dart';
import 'package:paisa/features/country_picker/data/models/country_model.dart';
import 'package:paisa/features/debit/data/models/debit_model.dart';
import 'package:paisa/features/debit/data/models/debit_transactions_model.dart';
import 'package:paisa/features/recurring/data/model/recurring.dart';
import 'package:paisa/features/transaction/data/model/transaction_model.dart';

@module
abstract class HiveBoxModule {
  @singleton
  @preResolve
  Future<Box<TransactionModel>> get expenseBox =>
      Hive.openBox<TransactionModel>(BoxType.expense.name);

  @singleton
  @preResolve
  Future<Box<AccountModel>> get accountBox =>
      Hive.openBox<AccountModel>(BoxType.accounts.name);

  @singleton
  @preResolve
  Future<Box<CategoryModel>> get categoryBox =>
      Hive.openBox<CategoryModel>(BoxType.category.name);

  @singleton
  @preResolve
  Future<Box<DebitModel>> get debtsBox =>
      Hive.openBox<DebitModel>(BoxType.debts.name);

  @singleton
  @preResolve
  Future<Box<DebitTransactionsModel>> get transactionsBox =>
      Hive.openBox<DebitTransactionsModel>(BoxType.transactions.name);

  @singleton
  @preResolve
  Future<Box<RecurringModel>> get recurringBox =>
      Hive.openBox<RecurringModel>(BoxType.recurring.name);

  @singleton
  @preResolve
  @Named('settings')
  Future<Box<dynamic>> get boxDynamic =>
      Hive.openBox<dynamic>(BoxType.settings.name);
}

class HiveAdapters {
  Future<void> initHive() async {
    await Hive.initFlutter(hivePath);
    Hive
      ..registerAdapter(TransactionModelAdapter())
      ..registerAdapter(CountryModelAdapter())
      ..registerAdapter(CategoryModelAdapter())
      ..registerAdapter(AccountModelAdapter())
      ..registerAdapter(TransactionTypeAdapter())
      ..registerAdapter(DebitModelAdapter())
      ..registerAdapter(DebitTypeAdapter())
      ..registerAdapter(DebitTransactionsModelAdapter())
      ..registerAdapter(CardTypeAdapter())
      ..registerAdapter(RecurringTypeAdapter())
      ..registerAdapter(RecurringModelAdapter())
      ..registerAdapter(FilterExpenseAdapter());
  }

  String? get hivePath {
    if (kIsWeb) {
      return 'paisa';
    } else if (TargetPlatform.windows == defaultTargetPlatform) {
      return 'paisa';
    } else {
      return null;
    }
  }
}
