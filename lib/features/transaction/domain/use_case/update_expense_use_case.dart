import 'package:injectable/injectable.dart';
import 'package:paisa/core/enum/transaction_type.dart';
import 'package:paisa/features/transaction/domain/entities/expense.dart';
import 'package:paisa/features/transaction/domain/repository/expense_repository.dart';

@singleton
class UpdateExpensesUseCase {
  UpdateExpensesUseCase({required this.expenseRepository});

  final ExpenseRepository expenseRepository;

  Future<void> call(Transaction expense) {
    return expenseRepository.updateExpense(
      expense.superId!,
      expense.name,
      expense.currency,
      expense.time,
      expense.categoryId,
      expense.accountId,
      expense.type ?? TransactionType.expense,
      expense.description,
    );
  }
}
