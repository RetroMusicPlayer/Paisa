import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:paisa/core/common_enum.dart';
import 'package:paisa/core/use_case/use_case.dart';
import 'package:paisa/features/account/domain/repository/account_repository.dart';

@singleton
class UpdateAccountUseCase implements UseCase<void, UpdateAccountParams> {
  UpdateAccountUseCase({required this.accountRepository});

  final AccountRepository accountRepository;

  @override
  Future<void> call({UpdateAccountParams? params}) {
    return accountRepository.updateAccount(
      bankName: params!.bankName,
      holderName: params.holderName,
      number: params.number,
      cardType: params.cardType,
      amount: params.amount,
      key: params.key,
      color: params.color,
    );
  }
}

class UpdateAccountParams extends Equatable {
  const UpdateAccountParams(
    this.key, {
    required this.bankName,
    required this.holderName,
    required this.number,
    required this.cardType,
    required this.amount,
    required this.color,
  });

  final double amount;
  final String bankName;
  final CardType cardType;
  final int color;
  final String holderName;
  final int key;
  final String number;

  @override
  List<Object?> get props => [
        key,
        bankName,
        holderName,
        number,
        cardType,
        amount,
        color,
      ];
}
