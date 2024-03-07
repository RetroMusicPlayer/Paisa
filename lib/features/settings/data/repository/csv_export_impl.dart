import 'dart:io';

import 'package:collection/collection.dart';
import 'package:csv/csv.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:injectable/injectable.dart';
import 'package:paisa/core/data/data_manager.dart';
import 'package:paisa/features/account/data/model/account_model.dart';
import 'package:paisa/features/category/data/model/category_model.dart';
import 'package:paisa/features/settings/domain/repository/import_export.dart';
import 'package:paisa/features/transaction/data/model/transaction_model.dart';
import 'package:path_provider/path_provider.dart';

@Named('csv')
@LazySingleton(as: Export)
class CSVExport extends Export {
  CSVExport(
    this.deviceInfo,
    this.accountDataManager,
    this.categoryDataManager,
    this.expenseDataManager,
  );

  final DataManager<AccountModel> accountDataManager;
  final DataManager<CategoryModel> categoryDataManager;
  final DeviceInfoPlugin deviceInfo;
  final DataManager<TransactionModel> expenseDataManager;

  @override
  Future<String> export() async {
    final File file = await getTempFile();
    final String csvString = await _fetchAllDataAndEncode();
    await file.writeAsString(csvString);
    return file.path;
  }

  Future<File> getTempFile() async {
    final Directory tempDir = await getTemporaryDirectory();
    return await File('${tempDir.path}/paisa_backup.csv').create();
  }

  Future<String> _fetchAllDataAndEncode() async {
    final List<TransactionModel> expenses = await expenseDataManager.all();
    final List<List<String>> data = await csvDataList(expenses);
    final String csvData = const ListToCsvConverter().convert(data);
    return csvData;
  }

  Future<List<List<String>>> csvDataList(
      List<TransactionModel> expenses) async {
    List<List<String>> row = [
      [
        'No.',
        'Transaction Name',
        'Transaction Type',
        'Amount',
        'Date',
        'Description',
        'Category Name',
        'Category Description',
        'Account Name',
        'Bank Name',
        'Account Type',
      ],
    ];
    expenses.forEachIndexed((index, expense) async {
      final AccountModel? account =
          await accountDataManager.findById(expense.accountId);
      final CategoryModel? category =
          await categoryDataManager.findById(expense.categoryId);
      row.add(expenseRow(index,
          expense: expense, account: account, category: category));
    });
    return row;
  }

  List<String> expenseRow(
    int index, {
    required TransactionModel expense,
    required AccountModel? account,
    required CategoryModel? category,
  }) {
    return [
      '$index',
      expense.name ?? '',
      '${expense.type?.index}',
      '${expense.currency}',
      expense.time?.toIso8601String() ?? '',
      expense.description ?? '',
      category?.name ?? '',
      category?.description ?? '',
      account?.name ?? '',
      account?.bankName ?? '',
      account?.cardType?.name ?? 'bank',
    ];
  }
}
