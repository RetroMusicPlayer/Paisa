import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:paisa/core/constants/constants.dart';
import 'package:paisa/core/enum/filter_expense.dart';
import 'package:paisa/core/enum/transaction_type.dart';
import 'package:paisa/features/settings/domain/use_case/setting_use_case.dart';

@singleton
class SummaryController {
  SummaryController(this.settingsUseCase);

  final ValueNotifier<DateTimeRange?> dateTimeRangeNotifier =
      ValueNotifier<DateTimeRange?>(null);

  late final FilterExpense filterExpense = settingsUseCase.get<FilterExpense>(
    selectedFilterExpenseKey,
    defaultValue: FilterExpense.daily,
  );

  late final ValueNotifier<FilterExpense> filterExpenseNotifier =
      ValueNotifier<FilterExpense>(filterExpense);

  final SettingsUseCase settingsUseCase;
  late final FilterExpense sortHomeExpense = settingsUseCase.get<FilterExpense>(
    selectedHomeFilterExpenseKey,
    defaultValue: FilterExpense.daily,
  );

  late final ValueNotifier<FilterExpense> sortHomeExpenseNotifier =
      ValueNotifier<FilterExpense>(sortHomeExpense);

  final ValueNotifier<TransactionType> typeNotifier =
      ValueNotifier<TransactionType>(TransactionType.income);
}
