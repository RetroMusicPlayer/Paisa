import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:hive/hive.dart';

part 'debt_type.g.dart';

@HiveType(typeId: 15)
enum DebtType {
  @HiveField(1)
  debt,
  @HiveField(2)
  credit
}

extension DebtTypeMapping on DebtType {
  String name(BuildContext context) {
    switch (this) {
      case DebtType.debt:
        return AppLocalizations.of(context)!.debtLabel;
      case DebtType.credit:
        return AppLocalizations.of(context)!.creditLabel;
    }
  }

  String hintName(BuildContext context) {
    switch (this) {
      case DebtType.debt:
        return 'Enter debt amount';
      case DebtType.credit:
        return 'Enter credit amount';
    }
  }
}
