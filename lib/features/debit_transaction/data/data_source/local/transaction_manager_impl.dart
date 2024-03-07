import 'package:hive_flutter/adapters.dart';
import 'package:injectable/injectable.dart';
import 'package:paisa/core/error/exceptions.dart';
import 'package:paisa/features/debit_transaction/data/data_source/transaction_data_manager.dart';
import 'package:paisa/features/debit_transaction/data/model/debit_transactions_model.dart';

@Singleton(as: TransactionDataManager)
class LocalTransactionDataManagerImpl implements TransactionDataManager {
  LocalTransactionDataManagerImpl({required this.box});

  final Box<DebitTransactionsModel> box;

  @override
  Future<int> add(DebitTransactionsModel transactionsModel) async {
    try {
      final int id = await box.add(transactionsModel);
      transactionsModel.superId = id;
      await transactionsModel.save();
      return id;
    } catch (err) {
      throw const Exceptions.itemNotAbleToAdd();
    }
  }

  @override
  Future<void> deleteAllByParentId(int id) {
    final Iterable<int> transactionsKeys = box.values
        .where((element) => element.parentId == id)
        .map((e) => e.superId!);
    return box.deleteAll(transactionsKeys);
  }

  @override
  Future<void> deleteById(int id) {
    return box.delete(id);
  }

  @override
  Iterable<DebitTransactionsModel> findById(int? id) {
    return box.values.where((element) => element.parentId == id);
  }

  @override
  Iterable<DebitTransactionsModel> export() {
    return box.values;
  }

  @override
  Future<void> clear() {
    return box.clear();
  }

  @override
  Future<void> update(DebitTransactionsModel element) {
    return box.put(element.superId!, element);
  }
}
