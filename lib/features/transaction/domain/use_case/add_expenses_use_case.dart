import 'package:injectable/injectable.dart';
import 'package:paisa/core/enum/transaction_type.dart';
import 'package:paisa/features/transaction/domain/repository/expense_repository.dart';

@singleton
class AddExpenseUseCase {
  AddExpenseUseCase({required this.expenseRepository});

  final ExpenseRepository expenseRepository;

  Future<void> call({
    required String name,
    required double amount,
    required DateTime time,
    required int categoryId,
    required int accountId,
    required TransactionType transactionType,
    String? description,
    int? fromAccountId,
    int? toAccountId,
    double transferAmount = 0.0,
  }) {
    return expenseRepository.addExpense(
      name,
      amount,
      time,
      categoryId,
      accountId,
      transactionType,
      description,
      fromAccountId,
      toAccountId,
      transferAmount,
    );
  }
}
