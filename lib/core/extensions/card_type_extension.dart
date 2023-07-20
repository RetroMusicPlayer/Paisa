import 'package:flutter/material.dart';
import 'package:paisa/core/common.dart';
import 'package:paisa/core/common_enum.dart';

extension CardTypeMap on String {
  CardType get type {
    switch (this) {
      case 'Cash':
        return CardType.cash;
      case 'Bank':
        return CardType.bank;
      case 'Wallet':
        return CardType.wallet;
    }
    return CardType.bank;
  }
}

extension CardTypeHelper on CardType {
  String stringValue(BuildContext context) {
    switch (this) {
      case CardType.cash:
        return context.loc.cash;
      case CardType.bank:
        return context.loc.bank;
      case CardType.wallet:
        return context.loc.wallet;
    }
  }
}
