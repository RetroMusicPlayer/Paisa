import 'package:flutter/material.dart';
import 'package:paisa/features/debit/data/models/debit_model.dart';
import 'package:paisa/features/debit/domain/entities/debit.dart';

import 'package:paisa/core/common.dart';
import 'package:paisa/core/common_enum.dart';

extension DebtTypeHelper on DebtType {
  String stringValue(BuildContext context) {
    switch (this) {
      case DebtType.debt:
        return context.loc.debt;
      case DebtType.credit:
        return context.loc.credit;
    }
  }
}

extension AccountMapping on DebitModel {
  Debit toEntity() {
    return Debit(
      description: description,
      name: name,
      amount: amount,
      dateTime: dateTime,
      expiryDateTime: expiryDateTime,
      debtType: debtType,
      superId: superId,
    );
  }
}
