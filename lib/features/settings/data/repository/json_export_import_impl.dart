import 'dart:convert';
import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:paisa/core/data/data_manager.dart';
import 'package:paisa/features/debit_transaction/data/data_source/transaction_data_manager.dart';
import 'package:paisa/features/debit/data/models/debit_model.dart';
import 'package:paisa/features/debit_transaction/data/model/debit_transactions_model.dart';
import 'package:path_provider/path_provider.dart';

import 'package:paisa/core/common.dart';
import 'package:paisa/core/error/exceptions.dart';
import 'package:paisa/features/account/data/model/account_model.dart';
import 'package:paisa/features/category/data/model/category_model.dart';
import 'package:paisa/features/settings/data/model/data.dart';
import 'package:paisa/features/settings/domain/repository/import_export.dart';
import 'package:paisa/features/transaction/data/model/transaction_model.dart';

@Named('json_export')
@LazySingleton(as: Export)
class JSONExportImpl implements Export {
  JSONExportImpl(
    this.accountDataManager,
    this.categoryDataManager,
    this.expenseDataManager,
    this.debitDataManager,
    this.transactionDataManager,
  );

  final DataManager<AccountModel> accountDataManager;
  final DataManager<CategoryModel> categoryDataManager;
  final DataManager<DebitModel> debitDataManager;
  final DataManager<TransactionModel> expenseDataManager;
  final TransactionDataManager transactionDataManager;

  @override
  Future<String> export() async {
    final File file = await getTempFile();
    final List<int> jsonBytes = await _fetchAllDataAndEncode();
    await file.writeAsBytes(jsonBytes);
    return file.path;
  }

  Future<File> getTempFile() async {
    final Directory tempDir = await getTemporaryDirectory();
    return await File('${tempDir.path}/paisa_backup.json').create();
  }

  Future<List<int>> _fetchAllDataAndEncode() async {
    final Iterable<TransactionModel> expenses = await expenseDataManager.all();
    final Iterable<AccountModel> accounts = await accountDataManager.all();
    final Iterable<CategoryModel> categories = await categoryDataManager.all();
    final Iterable<DebitModel> debits = await debitDataManager.all();
    final Iterable<DebitTransactionsModel> transactions =
        transactionDataManager.export();

    final Map<String, dynamic> data = {
      'version': 1,
      'expenses': expenses.toJson(),
      'accounts': accounts.toJson(),
      'categories': categories.toJson(),
      'debits': debits.toJson(),
      'transactions': transactions.toJson(),
    };
    return utf8.encode(jsonEncode(data));
  }
}

@Named('json_import')
@LazySingleton(as: Import)
class JSONImportImpl implements Import {
  JSONImportImpl(
    this.deviceInfo,
    this.accountDataManager,
    this.categoryDataManager,
    this.expenseDataManager,
    this.transactionDataManager,
    this.debitDataManager,
  );

  final DataManager<AccountModel> accountDataManager;
  final DataManager<CategoryModel> categoryDataManager;
  final DataManager<DebitModel> debitDataManager;
  final DeviceInfoPlugin deviceInfo;
  final DataManager<TransactionModel> expenseDataManager;
  final TransactionDataManager transactionDataManager;

  @override
  Future<bool> import() async {
    try {
      final FilePickerResult? result = await _pickFile();
      if (result == null || result.files.isEmpty) {
        throw const FileNotFoundException();
      }

      final jsonString = await _readJSONFromFile(result.files.first.path!);
      final Data data = Data.fromRawJson(jsonString);

      await expenseDataManager.clear();
      await categoryDataManager.clear();
      await accountDataManager.clear();
      await debitDataManager.clear();
      await transactionDataManager.clear();

      for (var element in data.accounts) {
        await accountDataManager.update(element);
      }

      for (var element in data.categories) {
        await categoryDataManager.update(element);
      }

      for (var element in data.expenses) {
        await expenseDataManager.update(element);
      }

      for (var element in data.debits) {
        await debitDataManager.update(element);
      }

      for (var element in data.debitTransactions) {
        await transactionDataManager.update(element);
      }

      return true;
    } catch (err) {
      debugPrint(err.toString());
      throw const ErrorFileException();
    }
  }

  Future<FilePickerResult?> _pickFile() async {
    if (defaultTargetPlatform == TargetPlatform.android) {
      final AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
      return FilePicker.platform.pickFiles(
        type: androidInfo.version.sdkInt < 29 ? FileType.any : FileType.custom,
        allowedExtensions: androidInfo.version.sdkInt < 29 ? null : ['json'],
        allowMultiple: false,
      );
    } else {
      return FilePicker.platform.pickFiles();
    }
  }

  Future<String> _readJSONFromFile(String path) async {
    final Uint8List bytes = await File(path).readAsBytes();
    return String.fromCharCodes(bytes);
  }
}
