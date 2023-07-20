import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

part 'card_type.g.dart';

@HiveType(typeId: 12)
enum CardType {
  @HiveField(0)
  cash,
  @HiveField(1)
  bank,
  @HiveField(2)
  wallet;
}

extension CardTypeHelper on CardType {
  IconData get icon {
    switch (this) {
      case CardType.bank:
        return MdiIcons.creditCard;
      case CardType.wallet:
        return MdiIcons.walletBifold;
      case CardType.cash:
        return MdiIcons.cashMultiple;
    }
  }
}
