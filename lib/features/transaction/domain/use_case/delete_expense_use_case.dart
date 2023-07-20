import 'package:injectable/injectable.dart';

import '../repository/expense_repository.dart';

@singleton
class DeleteExpenseUseCase {
  DeleteExpenseUseCase({required this.expenseRepository});

  final ExpenseRepository expenseRepository;

  Future<void> call(int expense) async =>
      expenseRepository.clearExpense(expense);
}
