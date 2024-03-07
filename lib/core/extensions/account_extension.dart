import 'package:collection/collection.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:paisa/core/common.dart';
import 'package:paisa/features/account/data/model/account_model.dart';
import 'package:paisa/features/account/domain/entities/account_entity.dart';

extension AccountModelMapping on AccountModel {
  double get initialAmount => amount ?? 0;

  AccountEntity toEntity() => AccountEntity(
        amount: amount,
        bankName: bankName,
        cardType: cardType,
        name: name,
        superId: superId,
        color: color,
        isAccountExcluded: isAccountExcluded,
        isAccountDefault: isAccountDefault,
        country: currencySymbol?.toEntity(),
      );
}

extension AccountModelsMapping on Iterable<AccountModel> {
  List<Map<String, dynamic>> toJson() {
    return map((e) => e.toJson()).toList();
  }

  List<AccountEntity> toEntities() =>
      map((accountModel) => accountModel.toEntity()).toList();

  double get initialAmount => fold<double>(
      0, (previousValue, element) => previousValue + element.initialAmount);
}

extension AccountBoxMapping on Box<AccountModel> {
  List<AccountEntity> toEntities() => values
      .map((accountModel) => accountModel.toEntity())
      .sorted((a, b) => b.name!.compareTo(a.name!))
      .toList();

  double totalAmount(int accountId) => values
      .where((element) => element.superId == accountId)
      .map((e) => e.initialAmount)
      .fold(0, (previousValue, element) => previousValue + element);
}

extension AccountEntityHelper on AccountEntity {
  double get initialAmount => amount ?? 0;
}

extension AccountEntityMapping on Iterable<AccountEntity> {
  double get initialAmount => fold<double>(
      0, (previousValue, element) => previousValue + element.initialAmount);
}
