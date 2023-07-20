import 'package:equatable/equatable.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:paisa/core/common_enum.dart';

part 'recurring.g.dart';

@HiveType(typeId: 5)
class RecurringModel extends HiveObject with EquatableMixin {
  RecurringModel({
    required this.name,
    required this.amount,
    required this.recurringType,
    required this.recurringDate,
    required this.accountId,
    required this.categoryId,
    required this.transactionType,
    this.superId,
  });

  @HiveField(5)
  int accountId;

  @HiveField(1)
  final double amount;

  @HiveField(6)
  int categoryId;

  @HiveField(0)
  final String name;

  @HiveField(3)
  final DateTime recurringDate;

  @HiveField(2, defaultValue: RecurringType.daily)
  final RecurringType recurringType;

  @HiveField(4)
  int? superId;

  @HiveField(7, defaultValue: TransactionType.expense)
  TransactionType transactionType;

  @override
  List<Object?> get props {
    return [
      name,
      amount,
      recurringType,
      recurringDate,
      superId,
    ];
  }

  RecurringModel copyWith({
    String? name,
    double? amount,
    RecurringType? recurringType,
    DateTime? recurringDate,
    int? superId,
    int? accountId,
    int? categoryId,
    TransactionType? transactionType,
  }) {
    return RecurringModel(
      name: name ?? this.name,
      amount: amount ?? this.amount,
      recurringType: recurringType ?? this.recurringType,
      recurringDate: recurringDate ?? this.recurringDate,
      superId: superId ?? this.superId,
      accountId: accountId ?? this.accountId,
      categoryId: categoryId ?? this.categoryId,
      transactionType: transactionType ?? this.transactionType,
    );
  }
}
