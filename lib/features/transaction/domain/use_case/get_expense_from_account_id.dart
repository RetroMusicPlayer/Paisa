import 'package:injectable/injectable.dart';
import 'package:paisa/core/common.dart';
import 'package:paisa/features/transaction/domain/entities/expense.dart';
import 'package:paisa/features/transaction/domain/repository/expense_repository.dart';

@singleton
class GetExpensesFromAccountIdUseCase {
  GetExpensesFromAccountIdUseCase({required this.expenseRepository});

  final ExpenseRepository expenseRepository;

  List<Transaction> call(int accountId) =>
      expenseRepository.fetchExpensesFromAccountId(accountId).toEntities();
}
