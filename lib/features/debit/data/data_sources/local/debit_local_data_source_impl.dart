import 'package:collection/collection.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:injectable/injectable.dart';
import 'package:paisa/features/debit/data/models/debit_model.dart';
import 'package:paisa/features/debit/data/models/debit_transactions_model.dart';

abstract class LocalDebitDataSource {
  Future<void> addDebtOrCredit(DebitModel debt);

  DebitModel? fetchDebtOrCreditFromId(int debtId);

  Future<void> updateDebt(DebitModel debtModel);

  Iterable<DebitTransactionsModel> getTransactionsFromId(int? id);

  Future<void> deleteDebtOrCreditFromId(int debtId);

  Future<void> addTransaction(DebitTransactionsModel transactionsModel);

  Future<void> deleteDebitTransactionsFromDebitId(int parentId);

  Future<void> deleteDebitTransactionFromDebitId(int transactionId);
}

@Singleton(as: LocalDebitDataSource)
class LocalDebitDataSourceImpl extends LocalDebitDataSource {
  LocalDebitDataSourceImpl({
    required this.debtBox,
    required this.transactionsBox,
  });

  final Box<DebitModel> debtBox;
  final Box<DebitTransactionsModel> transactionsBox;

  @override
  Future<void> addDebtOrCredit(DebitModel debt) async {
    final int id = await debtBox.add(debt);
    debt.superId = id;
    return debt.save();
  }

  @override
  Future<void> addTransaction(DebitTransactionsModel transactionsModel) async {
    final int id = await transactionsBox.add(transactionsModel);
    transactionsModel.superId = id;
    return transactionsModel.save();
  }

  @override
  Future<void> deleteDebtOrCreditFromId(int debtId) {
    return debtBox.delete(debtId);
  }

  @override
  Future<void> deleteDebitTransactionFromDebitId(int transactionId) {
    return transactionsBox.delete(transactionId);
  }

  @override
  Future<void> deleteDebitTransactionsFromDebitId(int parentId) {
    final Iterable<int> transactionsKeys = transactionsBox.values
        .where((element) => element.parentId == parentId)
        .map((e) => e.superId!);
    return transactionsBox.deleteAll(transactionsKeys);
  }

  @override
  DebitModel? fetchDebtOrCreditFromId(int debtId) =>
      debtBox.values.firstWhereOrNull((element) => element.superId == debtId);

  @override
  Iterable<DebitTransactionsModel> getTransactionsFromId(int? id) {
    return transactionsBox.values.where((element) => element.parentId == id);
  }

  @override
  Future<void> updateDebt(DebitModel debtModel) {
    return debtBox.put(debtModel.superId!, debtModel);
  }
}
