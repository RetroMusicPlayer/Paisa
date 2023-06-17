import 'package:flutter/foundation.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:injectable/injectable.dart';

import '../../core/enum/box_types.dart';
import '../../core/enum/card_type.dart';
import '../../core/enum/debt_type.dart';
import '../../core/enum/filter_expense.dart';
import '../../core/enum/recurring_type.dart';
import '../../core/enum/transaction_type.dart';
import '../../data/accounts/model/account_model.dart';
import '../../data/category/model/category_model.dart';
import '../../data/debt/models/debt_model.dart';
import '../../data/debt/models/transactions_model.dart';
import '../../data/expense/model/expense_model.dart';
import '../../data/recurring/model/recurring.dart';

@module
abstract class HiveBoxModule {
  @singleton
  @preResolve
  Future<Box<ExpenseModel>> get expenseBox =>
      Hive.openBox<ExpenseModel>(BoxType.expense.name);

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
  Future<Box<DebtModel>> get debtsBox =>
      Hive.openBox<DebtModel>(BoxType.debts.name);

  @singleton
  @preResolve
  Future<Box<TransactionsModel>> get transactionsBox =>
      Hive.openBox<TransactionsModel>(BoxType.transactions.name);

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
      ..registerAdapter(ExpenseModelAdapter())
      ..registerAdapter(CategoryModelAdapter())
      ..registerAdapter(AccountModelAdapter())
      ..registerAdapter(TransactionTypeAdapter())
      ..registerAdapter(DebtModelAdapter())
      ..registerAdapter(DebtTypeAdapter())
      ..registerAdapter(TransactionsModelAdapter())
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
