import 'package:injectable/injectable.dart';
import 'package:paisa/core/use_case/use_case.dart';

import '../repository/expense_repository.dart';

@singleton
class DeleteExpensesFromAccountIdUseCase
    implements UseCase<void, DeleteTransactionsFromAccountIdParams> {
  DeleteExpensesFromAccountIdUseCase({required this.expenseRepository});

  final ExpenseRepository expenseRepository;

  @override
  Future<void> call({DeleteTransactionsFromAccountIdParams? params}) async =>
      expenseRepository.deleteExpensesByAccountId(params!.accountId);
}

class DeleteTransactionsFromAccountIdParams {
  DeleteTransactionsFromAccountIdParams(this.accountId);

  final int accountId;
}
