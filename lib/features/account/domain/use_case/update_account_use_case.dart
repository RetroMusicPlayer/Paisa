import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:paisa/core/common_enum.dart';
import 'package:paisa/core/error/failures.dart';
import 'package:paisa/core/use_case/use_case.dart';
import 'package:paisa/features/account/domain/repository/account_repository.dart';
import 'package:paisa/features/country_picker/domain/entities/country.dart';

part 'update_account_use_case.freezed.dart';

@singleton
class UpdateAccountUseCase implements UseCase<void, UpdateAccountParams> {
  UpdateAccountUseCase({required this.accountRepository});

  final AccountRepository accountRepository;

  @override
  Future<Either<Failure, void>> call(UpdateAccountParams params) {
    return accountRepository.update(
      bankName: params.bankName,
      holderName: params.holderName,
      cardType: params.cardType,
      amount: params.amount,
      key: params.key,
      color: params.color,
      currencySymbol: params.currencySymbol,
      isAccountExcluded: params.isAccountExcluded,
      isAccountDefault: params.isAccountDefault,
    );
  }
}

@freezed
class UpdateAccountParams with _$UpdateAccountParams {
  const factory UpdateAccountParams(
    int key, {
    required String bankName,
    required CardType cardType,
    required String holderName,
    double? amount,
    int? color,
    CountryEntity? currencySymbol,
    bool? isAccountExcluded,
    bool? isAccountDefault,
  }) = _UpdateAccountParams;
}
