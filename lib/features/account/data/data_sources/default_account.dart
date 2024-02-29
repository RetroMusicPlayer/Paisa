// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:paisa/core/common_enum.dart';
import 'package:paisa/features/account/data/model/account_model.dart';

List<AccountModel> defaultAccountsData() {
  return [
    AccountModel(
      name: 'User name',
      bankName: 'Cash',
      cardType: CardType.cash,
      amount: 0.0,
      color: Colors.primaries.elementAtOrNull(0)!.value,
    ),
    AccountModel(
      name: 'User name',
      bankName: 'Bank',
      amount: 0.0,
      color: Colors.primaries.elementAtOrNull(1)!.value,
    ),
    AccountModel(
      name: 'User name',
      bankName: 'Wallet',
      cardType: CardType.wallet,
      amount: 0.0,
      color: Colors.primaries.elementAtOrNull(2)!.value,
    ),
  ];
}
