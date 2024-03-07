import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:paisa/core/common_enum.dart';
import 'package:paisa/core/error/failures.dart';
import 'package:paisa/core/use_case/use_case.dart';
import 'package:paisa/features/account/domain/repository/account_repository.dart';
import 'package:paisa/features/country_picker/domain/entities/country.dart';

@singleton
class AddAccountUseCase implements UseCase<int, ParamsAddAccount> {
  AddAccountUseCase({required this.accountRepository});

  final AccountRepository accountRepository;

  @override
  Future<Either<Failure, int>> call(ParamsAddAccount params) {
    return accountRepository.add(
      bankName: params.bankName,
      holderName: params.holderName,
      cardType: params.cardType,
      amount: params.amount,
      color: params.color,
      isAccountExcluded: params.isAccountExcluded,
      isAccountDefault: params.isAccountDefault,
      currencySymbol: params.currencySymbol,
    );
  }
}

class ParamsAddAccount extends Equatable {
  const ParamsAddAccount({
    required this.bankName,
    required this.holderName,
    required this.cardType,
    this.number,
    this.amount,
    this.color,
    this.currencySymbol,
    this.isAccountExcluded,
    this.isAccountDefault,
  });

  final double? amount;
  final String bankName;
  final CardType cardType;
  final int? color;
  final CountryEntity? currencySymbol;
  final String holderName;
  final bool? isAccountExcluded;
  final bool? isAccountDefault;
  final String? number;

  @override
  List<Object?> get props => [
        bankName,
        holderName,
        number,
        cardType,
        amount,
        color,
        isAccountExcluded,
        isAccountDefault,
      ];
}
