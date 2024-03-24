// Project imports:
import 'package:paisa/core/common_enum.dart';
import 'package:paisa/features/account/domain/entities/account_entity.dart';

abstract class AccountRepository {
  Future<int> add({
    required String bankName,
    required String holderName,
    required CardType cardType,
    double? amount,
    int? color,
    bool? isAccountExcluded,
  });

  Future<void> update({
    required int key,
    required String bankName,
    required String holderName,
    required CardType cardType,
    double? amount,
    int? color,
    bool? isAccountExcluded,
  });

  Future<void> delete(int key);

  Future<AccountEntity?> fetchById(int? accountId);

  Future<List<AccountEntity>> all();

  Future<void> clearAll();
}
