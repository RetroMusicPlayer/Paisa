import 'package:injectable/injectable.dart';
import 'package:paisa/core/use_case/use_case.dart';

import '../repository/expense_repository.dart';

@singleton
class DeleteExpensesFromCategoryIdUseCase
    implements UseCase<void, DeleteTransactionsByCategoryIdParams> {
  DeleteExpensesFromCategoryIdUseCase({required this.expenseRepository});

  final ExpenseRepository expenseRepository;

  @override
  Future<void> call({DeleteTransactionsByCategoryIdParams? params}) =>
      expenseRepository.deleteExpensesByCategoryId(params!.categoryId);
}

class DeleteTransactionsByCategoryIdParams {
  DeleteTransactionsByCategoryIdParams(this.categoryId);

  final int categoryId;
}
