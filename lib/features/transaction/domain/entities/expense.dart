import 'package:paisa/features/transaction/data/model/expense_model.dart';

class Transaction extends TransactionModel {
  Transaction({
    required super.name,
    required super.currency,
    required super.time,
    required super.categoryId,
    required super.accountId,
    required super.type,
    super.description,
    super.superId,
    super.fromAccountId,
    super.toAccountId,
    super.transferAmount,
  });
}
