import 'package:paisa/core/enum/transaction_type.dart';
import 'package:paisa/features/transaction/data/model/expense_model.dart';

abstract class ExpenseRepository {
  Future<void> addExpense(
    String name,
    double amount,
    DateTime time,
    int category,
    int account,
    TransactionType transactionType,
    String? description,
    int? fromAccountId,
    int? toAccountId,
    double transferAmount,
  );

  Future<void> clearExpense(int expenseId);

  TransactionModel? fetchExpenseFromId(int expenseId);

  List<TransactionModel> expenses();

  List<TransactionModel> fetchExpensesFromAccountId(int accountId);

  List<TransactionModel> fetchExpensesFromCategoryId(int accountId);

  Future<void> deleteExpensesByAccountId(int accountId);

  Future<void> deleteExpensesByCategoryId(int categoryId);

  Future<void> updateExpense(
    int key,
    String name,
    double currency,
    DateTime time,
    int categoryId,
    int accountId,
    TransactionType transactionType,
    String? description,
  );

  Future<void> clearAll();

  List<TransactionModel> filterExpenses(
    String query,
    List<int> accounts,
    List<int> categories,
  );
}
