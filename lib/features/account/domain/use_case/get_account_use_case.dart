import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:paisa/core/common.dart';
import 'package:paisa/core/use_case/use_case.dart';
import 'package:paisa/features/account/domain/entities/account.dart';
import 'package:paisa/features/account/domain/repository/account_repository.dart';

@singleton
class GetAccountUseCase implements UseCase<AccountEntity?, GetAccountParams> {
  GetAccountUseCase({required this.accountRepository});

  final AccountRepository accountRepository;

  @override
  AccountEntity? call({GetAccountParams? params}) {
    return accountRepository.fetchAccountFromId(params!.accountId)?.toEntity();
  }
}

class GetAccountParams extends Equatable {
  const GetAccountParams(this.accountId);

  final int accountId;

  @override
  List<Object?> get props => [accountId];
}
