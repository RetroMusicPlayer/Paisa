import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:paisa/core/error/failures.dart';
import 'package:paisa/core/use_case/use_case.dart';
import 'package:paisa/features/account/domain/entities/account_entity.dart';
import 'package:paisa/features/account/domain/repository/account_repository.dart';

@singleton
class GetAccountUseCase implements UseCase<AccountEntity, GetAccountParams> {
  GetAccountUseCase({required this.accountRepository});

  final AccountRepository accountRepository;

  @override
  Future<Either<Failure, AccountEntity>> call(GetAccountParams params) {
    return accountRepository.fetchById(params.accountId);
  }
}

class GetAccountParams extends Equatable {
  const GetAccountParams(this.accountId);

  final int? accountId;

  @override
  List<Object?> get props => [accountId];
}
