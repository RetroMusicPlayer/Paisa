import 'package:equatable/equatable.dart';
import 'package:hive_flutter/adapters.dart';

part 'debit_transactions_model.g.dart';

@HiveType(typeId: 3)
class DebitTransactionsModel extends HiveObject with EquatableMixin {
  DebitTransactionsModel({
    required this.amount,
    required this.now,
    required this.parentId,
    this.superId,
  });

  @HiveField(1)
  final double amount;

  @HiveField(2)
  final DateTime now;

  @HiveField(4, defaultValue: -1)
  int? parentId;

  @HiveField(3)
  int? superId;

  @override
  List<Object?> get props => [
        now,
        amount,
        parentId,
      ];
}
