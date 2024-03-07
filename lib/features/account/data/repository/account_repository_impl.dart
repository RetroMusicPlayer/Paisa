import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:paisa/core/common_enum.dart';
import 'package:paisa/core/common.dart';
import 'package:paisa/core/data/data_manager.dart';
import 'package:paisa/core/error/exceptions.dart';
import 'package:paisa/core/error/failures.dart';
import 'package:paisa/features/account/data/model/account_model.dart';
import 'package:paisa/features/account/domain/entities/account_entity.dart';
import 'package:paisa/features/account/domain/repository/account_repository.dart';
import 'package:paisa/features/country_picker/domain/entities/country.dart';

@Singleton(as: AccountRepository)
class AccountRepositoryImpl implements AccountRepository {
  AccountRepositoryImpl({
    required this.dataManager,
  });

  final DataManager<AccountModel> dataManager;

  @override
  Future<Either<Failure, int>> add({
    required String bankName,
    required String holderName,
    required CardType cardType,
    double? amount,
    int? color,
    bool? isAccountExcluded,
    bool? isAccountDefault,
    CountryEntity? currencySymbol,
  }) async {
    try {
      final int id = await dataManager.add(AccountModel(
        name: holderName,
        bankName: bankName,
        cardType: cardType,
        amount: amount,
        color: color,
        isAccountExcluded: isAccountExcluded,
        isAccountDefault: isAccountDefault ?? false,
        currencySymbol: currencySymbol?.toEntity(),
      ));
      return right(id);
    } on ItemNotAbleToAddException {
      return left(const Failure.itemNotAbleToAdd());
    }
  }

  @override
  Future<Either<Failure, void>> update({
    required int key,
    required String? bankName,
    required String? holderName,
    required CardType cardType,
    double? amount,
    int? color,
    bool? isAccountExcluded = false,
    bool? isAccountDefault = false,
    CountryEntity? currencySymbol,
  }) async {
    try {
      return right(await dataManager.update(
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
      ));
    } on UnableToUpdateException {
      return left(const Failure.unAbleToUpdate());
    }
  }

  @override
  Future<Either<Failure, void>> clear() async {
    try {
      return right(await dataManager.clear());
    } on CannotClearException {
      return left(const Failure.cannotClear());
    }
  }

  @override
  Future<Either<Failure, void>> delete(int key) async {
    try {
      return right(await dataManager.deleteById(key));
    } on NotAbleToDeleteException {
      return left(const Failure.notAbleToDelete());
    }
  }

  @override
  Future<Either<Failure, AccountEntity>> fetchById(int? accountId) async {
    try {
      final AccountModel? result = await dataManager.findById(accountId);
      if (result == null) {
        return left(const Failure.itemNotFound());
      } else {
        return right(result.toEntity());
      }
    } on ItemNotFoundException {
      return left(const Failure.itemNotFound());
    }
  }

  @override
  Future<Either<Failure, List<AccountEntity>>> all() async {
    try {
      final List<AccountModel> result = await dataManager.all();
      return right(result.toEntities());
    } on UnableToUpdateException {
      return left(const Failure.empty());
    } on NoItemsException {
      return left(const Failure.empty());
    }
  }
}
