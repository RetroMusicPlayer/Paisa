// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:paisa/core/use_case/use_case.dart';
import 'package:paisa/features/account/domain/entities/account_entity.dart';
import 'package:paisa/features/account/domain/repository/account_repository.dart';

@lazySingleton
class GetAccountsUseCase implements UseCase<List<AccountEntity>, NoParams> {
  GetAccountsUseCase({required this.accountRepository});

  final AccountRepository accountRepository;

  @override
  Future<List<AccountEntity>> call(NoParams? params) async {
    return Future<List<AccountEntity>>.value(accountRepository.all());
  }
}
