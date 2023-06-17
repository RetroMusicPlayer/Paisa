import 'dart:io';

import 'package:csv/csv.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';

import '../../../../main.dart';
import '../../../core/common.dart';
import '../../../data/accounts/data_sources/local_account_data_manager.dart';
import '../../../data/accounts/model/account_model.dart';
import '../../../data/category/data_sources/category_local_data_source.dart';
import '../../../data/category/model/category_model.dart';
import '../../../data/expense/data_sources/local_expense_data_manager.dart';
import '../../../data/expense/model/expense_model.dart';
import 'setting_option.dart';

class ExportExpensesWidget extends StatefulWidget {
  const ExportExpensesWidget({Key? key}) : super(key: key);

  @override
  ExportExpensesWidgetState createState() => ExportExpensesWidgetState();
}

class ExportExpensesWidgetState extends State<ExportExpensesWidget> {
  final dataSource = getIt.get<LocalExpenseDataManager>();
  final accountDataSource = getIt.get<LocalAccountDataManager>();
  final categoryDataSource = getIt.get<LocalCategoryDataManager>();
  DateTimeRange? dateTimeRange;
  @override
  Widget build(BuildContext context) {
    return SettingsOption(
      onTap: () => exportData('Export'),
      title: context.loc.saveAsCSV,
      subtitle: context.loc.saveAsCSVDesc,
    );
  }

  Future<void> exportData(String subject) async {
    final initialDateRange = DateTimeRange(
      start: DateTime.now().subtract(const Duration(days: 3)),
      end: DateTime.now(),
    );
    final newDateRange = await showDateRangePicker(
      context: context,
      initialDateRange: dateTimeRange ?? initialDateRange,
      firstDate: DateTime.now().subtract(const Duration(days: 7)),
      lastDate: DateTime.now(),
      initialEntryMode: DatePickerEntryMode.calendarOnly,
      builder: (_, child) {
        return Theme(
          data: ThemeData.from(colorScheme: Theme.of(context).colorScheme)
              .copyWith(
            appBarTheme: Theme.of(context).appBarTheme,
          ),
          child: child!,
        );
      },
    );
    if (newDateRange == null) return;
    dateTimeRange = newDateRange;
    final expenses = await dataSource.filteredExpenses(dateTimeRange!);
    final data = csvDataList(expenses, accountDataSource, categoryDataSource);
    final csvData = const ListToCsvConverter().convert(data);
    final directory = await getApplicationSupportDirectory();
    final path = "${directory.path}/paisa-expense-manager.csv";
    final file = File(path);
    await file.writeAsString(csvData);
    Share.shareXFiles([XFile(path, mimeType: "text/csv")], subject: subject);
  }
}

List<String> expenseRow(
  int index, {
  required ExpenseModel expense,
  required AccountModel account,
  required CategoryModel category,
}) {
  return [
    '$index',
    expense.name,
    '${expense.currency}',
    expense.time.toIso8601String(),
    expense.description ?? '',
    category.name,
    category.description ?? '',
    account.name,
    account.bankName,
    account.cardType!.name,
  ];
}

List<List<String>> csvDataList(
  List<ExpenseModel> expenses,
  LocalAccountDataManager accountDataSource,
  LocalCategoryDataManager categoryDataSource,
) {
  return [
    [
      'No',
      'Expense Name',
      'Amount',
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
        final account = accountDataSource.fetchAccountFromId(expense.accountId);
        final category =
            categoryDataSource.fetchCategoryFromId(expense.categoryId);
        return expenseRow(
          index,
          expense: expense,
          account: account!,
          category: category!,
        );
      },
    ),
  ];
}
