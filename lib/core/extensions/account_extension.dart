import 'package:collection/collection.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:paisa/features/account/data/model/account_model.dart';
import 'package:paisa/features/account/domain/entities/account.dart';

extension AccountModelMapping on AccountModel {
  double get initialAmount => amount ?? 0;
  AccountEntity toEntity() => AccountEntity(
        amount: amount,
        bankName: bankName,
        cardType: cardType,
        name: name,
        number: number,
        superId: superId,
        color: color,
      );
}

extension AccountModelsMapping on Iterable<AccountModel> {
  List<Map<String, dynamic>> toJson() {
    return map((e) => e.toJson()).toList();
  }

  List<AccountEntity> toEntities() =>
      map((accountModel) => accountModel.toEntity()).toList();
}

extension AccountBoxMapping on Box<AccountModel> {
  List<AccountEntity> toEntities() => values
      .map((accountModel) => accountModel.toEntity())
      .sorted((a, b) => b.name!.compareTo(a.name!))
      .toList();

  double get totalAccountInitialAmount =>
      groupBy(values, (AccountModel account) => account.key)
          .keys
          .map((accountId) => get(accountId)!)
          .map((account) => account.initialAmount)
          .fold<double>(0, (previousValue, element) => previousValue + element);
}

extension AccountEntityHelper on AccountEntity {
  double get initialAmount => amount ?? 0;
}
