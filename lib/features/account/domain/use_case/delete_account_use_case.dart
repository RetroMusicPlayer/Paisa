// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:paisa/core/use_case/use_case.dart';
import 'package:paisa/features/account/domain/repository/account_repository.dart';

part 'delete_account_use_case.freezed.dart';

@lazySingleton
class DeleteAccountUseCase implements UseCase<void, DeleteAccountParams> {
  DeleteAccountUseCase({required this.accountRepository});

  final AccountRepository accountRepository;

  @override
  Future<void> call(DeleteAccountParams params) async {
    return await accountRepository.delete(params.accountId);
  }
}

@freezed
class DeleteAccountParams with _$DeleteAccountParams {
  const factory DeleteAccountParams(int accountId) = _DeleteAccountParams;
}
