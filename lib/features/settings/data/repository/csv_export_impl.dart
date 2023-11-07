import 'dart:io';

import 'package:csv/csv.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:injectable/injectable.dart';
import 'package:paisa/features/account/data/data_sources/account_manager.dart';
import 'package:paisa/features/account/data/model/account_model.dart';
import 'package:paisa/features/category/data/data_sources/local/category_data_source.dart';
import 'package:paisa/features/category/data/model/category_model.dart';
import 'package:paisa/features/settings/domain/repository/import_export.dart';
import 'package:paisa/features/transaction/data/data_sources/local/transaction_data_manager.dart';
import 'package:paisa/features/transaction/data/model/transaction_model.dart';
import 'package:path_provider/path_provider.dart';

@Named('csv')
@LazySingleton(as: Export)
class CSVExport extends Export {
  CSVExport(
    this.deviceInfo,
    @Named('local-account') this.accountDataManager,
    this.categoryDataManager,
    this.expenseDataManager,
  );

  final AccountManager accountDataManager;
  final LocalCategoryManager categoryDataManager;
  final DeviceInfoPlugin deviceInfo;
  final LocalTransactionManager expenseDataManager;

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
    final List<TransactionModel> expenses =
        expenseDataManager.export().toList();
    final List<List<String>> data = csvDataList(expenses);
    final String csvData = const ListToCsvConverter().convert(data);
    return csvData;
  }

  List<List<String>> csvDataList(List<TransactionModel> expenses) {
    return [
      [
        'No',
        'Name',
        'Amount',
        'Type',
        'Date',
        'Description',
        'Category Name',
        'Category Description',
        'Account Name',
        'Bank Name',
        'Account Type',
      ],
      ...List.generate(
        expenses.length,
        (index) {
          final expense = expenses[index];
          final account = accountDataManager.findById(expense.accountId);
          final category = categoryDataManager.findById(expense.categoryId);
          return expenseRow(
            index,
            expense: expense,
            account: account,
            category: category!,
          );
        },
      ),
    ];
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
      '${expense.currency}',
      expense.type,
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
