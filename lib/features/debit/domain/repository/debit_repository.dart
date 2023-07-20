import 'package:paisa/core/enum/debt_type.dart';
import 'package:paisa/features/debit/data/models/debit_model.dart';
import 'package:paisa/features/debit/data/models/debit_transactions_model.dart';

abstract class DebtRepository {
  Future<void> addDebtOrCredit(
    String description,
    String name,
    double amount,
    DateTime currentDateTime,
    DateTime dueDateTime,
    DebtType debtType,
  );

  Future<void> updateDebt({
    required String description,
    required String name,
    required double amount,
    required DateTime currentDateTime,
    required DateTime dueDateTime,
    required DebtType debtType,
    required int key,
  });

  DebitModel? fetchDebtOrCreditFromId(int debtId);

  Future<void> deleteDebtOrCreditFromId(int debtId);

  Future<void> deleteDebitTransactionsFromDebitId(int parentId);

  Future<void> deleteDebitTransactionFromDebitId(int transactionId);

  Future<void> addTransaction(
    double amount,
    DateTime currentDateTime,
    int parentId,
  );

  Iterable<DebitTransactionsModel> fetchTransactionsFromId(int id);
}
