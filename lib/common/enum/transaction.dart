import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:hive/hive.dart';

part 'transaction.g.dart';

@HiveType(typeId: 11)
enum TransactionType {
  @HiveField(1)
  expense,
  @HiveField(0)
  income,
  /*  @HiveField(2)
  transfer */
}

extension TransactionTypeMapping on TransactionType {
  String name(BuildContext context) {
    switch (this) {
      case TransactionType.income:
        return AppLocalizations.of(context)!.incomeLabel;
      case TransactionType.expense:
        return AppLocalizations.of(context)!.expenseLabel;
      /* case TransactionType.transfer:
        return AppLocalizations.of(context)!.transferLabel; */
    }
  }

  String hintName(BuildContext context) {
    switch (this) {
      case TransactionType.income:
        return AppLocalizations.of(context)!.incomeNameLabel;
      case TransactionType.expense:
        return AppLocalizations.of(context)!.expenseNameLabel;
      /*  case TransactionType.transfer:
        return AppLocalizations.of(context)!.transferNameLabel; */
    }
  }

  String get nameString {
    switch (this) {
      case TransactionType.expense:
        return 'expense';
      case TransactionType.income:
        return 'income';
      /*  case TransactionType.transfer:
        return 'transfer'; */
    }
  }
}

extension TransactionMap on String {
  TransactionType get type {
    switch (this) {
      case 'expense':
        return TransactionType.expense;
      case 'income':
        return TransactionType.income;
      /* case 'transfer':
        return TransactionType.transfer; */
    }
    return TransactionType.expense;
  }
}
