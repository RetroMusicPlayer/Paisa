// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:paisa/core/common_enum.dart';
import 'package:paisa/core/use_case/use_case.dart';
import 'package:paisa/features/account/domain/repository/account_repository.dart';

part 'add_account_use_case.freezed.dart';

@lazySingleton
class AddAccountUseCase implements UseCase<int, AddAccountParams> {
  AddAccountUseCase({required this.accountRepository});

  final AccountRepository accountRepository;

  @override
  Future<int> call(AddAccountParams params) {
    return accountRepository.add(
      bankName: params.bankName,
      holderName: params.holderName,
      cardType: params.cardType,
      amount: params.amount,
      color: params.color,
      isAccountExcluded: params.isAccountExcluded,
    );
  }
}

@freezed
class AddAccountParams with _$AddAccountParams {
  const factory AddAccountParams({
    required String bankName,
    required String holderName,
    double? amount,
    @Default(CardType.cash) CardType cardType,
    int? color,
    bool? isAccountExcluded,
  }) = _AddAccountParams;
}
