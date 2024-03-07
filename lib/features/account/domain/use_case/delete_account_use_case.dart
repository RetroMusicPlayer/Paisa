import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:paisa/core/error/failures.dart';
import 'package:paisa/core/use_case/use_case.dart';
import 'package:paisa/features/account/domain/repository/account_repository.dart';

@singleton
class DeleteAccountUseCase implements UseCase<void, DeleteAccountParams> {
  DeleteAccountUseCase({required this.accountRepository});

  final AccountRepository accountRepository;

  @override
  Future<Either<Failure, void>> call(DeleteAccountParams params) {
    return accountRepository.delete(params.accountId);
  }
}

class DeleteAccountParams extends Equatable {
  const DeleteAccountParams(this.accountId);

  final int accountId;

  @override
  List<Object?> get props => [accountId];
}
