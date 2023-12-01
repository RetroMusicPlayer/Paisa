import 'package:injectable/injectable.dart';
import 'package:paisa/core/common_enum.dart';
import 'package:paisa/core/common.dart';
import 'package:paisa/features/account/data/data_sources/account_manager.dart';
import 'package:paisa/features/account/data/model/account_model.dart';
import 'package:paisa/features/account/domain/repository/account_repository.dart';
import 'package:paisa/features/country_picker/domain/entities/country.dart';

@Singleton(as: AccountRepository)
class AccountRepositoryImpl extends AccountRepository {
  AccountRepositoryImpl({
    @Named('local-account') required this.dataSource,
  });

  final AccountManager dataSource;

  @override
  Future<int> add({
    required String bankName,
    required String holderName,
    required CardType cardType,
    double? amount,
    int? color,
    bool? isAccountExcluded,
    bool? isAccountDefault,
    Country? currencySymbol,
  }) {
    return dataSource.add(AccountModel(
      name: holderName,
      bankName: bankName,
      cardType: cardType,
      amount: amount,
      color: color,
      isAccountExcluded: isAccountExcluded,
      isAccountDefault: isAccountDefault ?? false,
      currencySymbol: currencySymbol?.toEntity(),
    ));
  }

  @override
  List<AccountModel> all() {
    return dataSource.accounts();
  }

  @override
  Future<void> clearAll() {
    return dataSource.clear();
  }

  @override
  Future<void> delete(int key) {
    return dataSource.delete(key);
  }

  @override
  AccountModel? fetchById(int? accountId) {
    return dataSource.findById(accountId);
  }

  @override
  Future<void> update({
    required int key,
    required String? bankName,
    required String? holderName,
    required CardType cardType,
    double? amount,
    int? color,
    bool? isAccountExcluded = false,
    bool? isAccountDefault = false,
    Country? currencySymbol,
  }) {
    return dataSource.update(
      AccountModel(
        name: holderName,
        bankName: bankName,
        cardType: cardType,
        amount: amount,
        color: color,
        currencySymbol: currencySymbol?.toEntity(),
        isAccountExcluded: isAccountExcluded,
        isAccountDefault: isAccountDefault ?? false,
        superId: key,
      ),
    );
  }
}
