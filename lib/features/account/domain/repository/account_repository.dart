import 'package:paisa/core/common_enum.dart';
import 'package:paisa/features/account/data/model/account_model.dart';

abstract class AccountRepository {
  Future<void> addAccount({
    required String bankName,
    required String holderName,
    required String number,
    required CardType cardType,
    required double amount,
    required int color,
  });

  Future<void> updateAccount({
    required int key,
    required String? bankName,
    required String? holderName,
    required String? number,
    required CardType? cardType,
    required double? amount,
    required int? color,
  });

  Future<void> deleteAccount(int key);

  AccountModel? fetchAccountFromId(int accountId);

  List<AccountModel> getAccounts();

  Future<void> clearAll();
}
