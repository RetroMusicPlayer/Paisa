// Dart imports:
import 'dart:math';

// Flutter imports:
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:get_it/get_it.dart';

// Project imports:
import 'package:paisa/app.dart';
import 'package:paisa/core/common_enum.dart';
import 'package:paisa/di/dependency_injection.dart';
import 'package:paisa/features/account/data/data_sources/account_data_manager.dart';
import 'package:paisa/features/account/data/model/account_model.dart';
import 'package:paisa/features/category/data/data_sources/category_data_source.dart';
import 'package:paisa/features/category/data/model/category_model.dart';
import 'package:paisa/features/recurring/domain/repository/recurring_repository.dart';
import 'package:paisa/features/transaction/data/data_sources/local/transaction_data_manager.dart';
import 'package:paisa/features/transaction/data/model/transaction_model.dart';

final getIt = GetIt.instance;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configInjector(getIt);
  getIt<RecurringRepository>().checkForRecurring();
 // await _addDummyData(); // dummy data toggle

  runApp(const PaisaApp());
  if (TargetPlatform.android == defaultTargetPlatform ||
      TargetPlatform.iOS == defaultTargetPlatform) {
    initAppShortcuts();
  }
}

// ignore: always_declare_return_types
_addDummyData() async {
  final accountDataSource = getIt<AccountDataSource>();
  final categoryDataSource = getIt<CategoryDataSource>();
  final transactionDataSource = getIt<TransactionDataSource>();

  await accountDataSource.clear();
  await categoryDataSource.clear();
  await transactionDataSource.clear();

  for (int i = 0; i < 10; i++) {
    await accountDataSource.add(
      AccountModel(
        bankName: 'Bank Name $i',
        name: 'Holder name $i',
        cardType: CardType.values[Random().nextInt(3)],
        color: Colors.amber.value,
      ),
    );

    await categoryDataSource.add(
      CategoryModel(
        name: 'Category name $i',
        color: Colors.amber.value,
        icon: Icons.car_crash.codePoint,
      ),
    );
  }
  final random = Random();
  final startDate = DateTime(2010);
  final endDate = DateTime.now();

  for (int i = 0; i < 1500; i++) {
    int accountId = Random().nextInt(10);
    int categoryId = Random().nextInt(10);
    final difference = endDate.difference(startDate).inDays;
    final randomDay = random.nextInt(difference);
    final randomDate = startDate.add(Duration(days: randomDay));
    await transactionDataSource.add(TransactionModel(
      name: 'Transaction name $i',
      time: randomDate,
      accountId: accountId,
      categoryId: categoryId,
      currency: Random().nextDouble() * 100000,
      type: TransactionType.values[Random().nextInt(2)],
    ));
  }
}
