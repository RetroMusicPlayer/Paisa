import 'package:injectable/injectable.dart';
import 'package:paisa/core/common.dart';
import 'package:paisa/core/use_case/use_case.dart';
import 'package:paisa/features/account/domain/entities/account.dart';
import 'package:paisa/features/account/domain/repository/account_repository.dart';

@singleton
class GetAccountsUseCase implements UseCase<List<AccountEntity>, NoParams> {
  GetAccountsUseCase({required this.accountRepository});

  final AccountRepository accountRepository;

  @override
  List<AccountEntity> call({NoParams? params}) {
    return accountRepository.getAccounts().toEntities();
  }
}
