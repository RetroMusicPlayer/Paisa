import 'dart:convert';
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:share_plus/share_plus.dart';

import '../../common/enum/box_types.dart';
import '../../di/service_locator.dart';
import '../accounts/data_sources/account_local_data_source.dart';
import '../accounts/model/account.dart';
import '../category/data_sources/category_local_data_source.dart';
import '../category/model/category.dart';
import '../expense/data_sources/expense_manager_local_data_source.dart';
import '../expense/model/expense.dart';
import 'data.dart';

class FileHandler {
  Future<String> _fetchExpensesAndEncode() async {
    final Iterable<Expense> expenses =
        await locator.get<ExpenseManagerLocalDataSource>().exportData();
    final Iterable<Account> accounts =
        await locator.get<AccountLocalDataSource>().exportData();
    final Iterable<Category> categories =
        await locator.get<CategoryLocalDataSource>().exportData();

    final data = {
      'expenses': expenses.map((e) => e.toJson()).toList(),
      'accounts': accounts.map((e) => e.toJson()).toList(),
      'categories': categories.map((e) => e.toJson()).toList(),
    };
    return json.encode(data);
  }

  Future<void> createBackUpFile() async {
    await Permission.storage.request();
    final String data = await _fetchExpensesAndEncode();
    final directory = await getApplicationSupportDirectory();
    final path = "${directory.path}/paisa-expense-manager.json";
    final file = File(path);
    await file.writeAsString(data);
    await Share.shareFiles([path], subject: 'Export JSON');
  }

  Future<File?> _pickJSONFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['json'],
    );
    if (result != null) {
      return File(result.files.single.path!);
    }
    return null;
  }

  Future<void> restoreBackUpFile() async {
    File? file = await _pickJSONFile();
    if (file != null) {
      final jsonString = await file.readAsString();
      final data = Data.fromRawJson(jsonString);
      final accountBox = Hive.box<Account>(BoxType.accounts.stringValue);
      final categoryBox = Hive.box<Category>(BoxType.category.stringValue);
      final expenseBox = Hive.box<Expense>(BoxType.expense.stringValue);
      await expenseBox.clear();
      await categoryBox.clear();
      await accountBox.clear();

      await expenseBox.addAll(data.expenses);
      await categoryBox.addAll(data.categories);
      await accountBox.addAll(data.accounts);
    }
  }
}
