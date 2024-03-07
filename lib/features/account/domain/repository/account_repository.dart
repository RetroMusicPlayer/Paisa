import 'package:dartz/dartz.dart';
import 'package:paisa/core/common_enum.dart';
import 'package:paisa/core/error/failures.dart';
import 'package:paisa/features/account/domain/entities/account_entity.dart';
import 'package:paisa/features/country_picker/domain/entities/country.dart';

abstract class AccountRepository {
  Future<Either<Failure, int>> add({
    required String bankName,
    required String holderName,
    required CardType cardType,
    double? amount,
    int? color,
    bool? isAccountExcluded,
    bool? isAccountDefault,
    CountryEntity? currencySymbol,
  });

  Future<Either<Failure, void>> update({
    required int key,
    required String bankName,
    required String holderName,
    required CardType cardType,
    double? amount,
    int? color,
    bool? isAccountExcluded,
    bool? isAccountDefault,
    CountryEntity? currencySymbol,
  });

  Future<Either<Failure, void>> delete(int key);

  Future<Either<Failure, AccountEntity>> fetchById(int? accountId);

  Future<Either<Failure, List<AccountEntity>>> all();

  Future<Either<Failure, void>> clear();
}
