import 'package:collection/collection.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:paisa/features/debit/data/models/debit_transactions_model.dart';
import 'package:paisa/features/debit/domain/entities/debit_transaction.dart';

extension MappingOnTransactionsBox on Box<DebitTransactionsModel> {
  List<DebitTransaction> getTransactionsFromId(int parentId) {
    return values.where((element) => element.parentId == parentId).toEntities();
  }
}

extension MappingOnTransaction on DebitTransactionsModel {
  DebitTransaction toEntity() => DebitTransaction(
        amount: amount,
        now: now,
        parentId: parentId,
      );
}

extension MappingOnTransactions on Iterable<DebitTransactionsModel> {
  List<DebitTransaction> toEntities() => map((e) => e.toEntity())
      .sorted((a, b) => b.now.compareTo(a.now))
      .toList();
}
