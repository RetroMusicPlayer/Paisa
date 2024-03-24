// Project imports:
import 'package:paisa/features/debit_transaction/domain/entities/debit_transaction_entity.dart';

abstract class DebitTransactionRepository {
  Future<List<DebitTransactionEntity>> fetchTransactionsFromId(int id);

  Future<void> deleteDebitTransactionsFromDebitId(int parentId);

  Future<void> deleteDebitTransactionFromId(int transactionId);

  Future<void> addTransaction(
    double amount,
    DateTime currentDateTime,
    int parentId,
  );
}
