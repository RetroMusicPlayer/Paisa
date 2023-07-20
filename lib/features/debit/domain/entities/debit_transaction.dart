import 'package:paisa/features/debit/data/models/debit_transactions_model.dart';

class DebitTransaction extends DebitTransactionsModel {
  DebitTransaction({
    required super.amount,
    required super.now,
    required super.parentId,
    super.superId,
  });
}
