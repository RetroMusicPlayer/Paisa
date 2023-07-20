import 'package:injectable/injectable.dart';
import 'package:paisa/core/common.dart';
import 'package:paisa/features/transaction/domain/entities/expense.dart';
import 'package:paisa/features/transaction/domain/repository/expense_repository.dart';

@singleton
class GetExpenseUseCase {
  GetExpenseUseCase({required this.expenseRepository});

  final ExpenseRepository expenseRepository;

  Future<Transaction?> call(int expenseId) async =>
      expenseRepository.fetchExpenseFromId(expenseId)?.toEntity();
}
