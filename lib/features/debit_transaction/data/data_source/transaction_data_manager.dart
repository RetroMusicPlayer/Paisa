import 'package:paisa/features/debit_transaction/data/model/debit_transactions_model.dart';

abstract class TransactionDataManager {
  Future<int> add(DebitTransactionsModel transactionsModel);

  Future<void> deleteById(int parentId);

  Future<void> deleteAllByParentId(int transactionId);

  Iterable<DebitTransactionsModel> findById(int? id);

  Iterable<DebitTransactionsModel> export();

  Future<void> clear();

  Future<void> update(DebitTransactionsModel element);
}
