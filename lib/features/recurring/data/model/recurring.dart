import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:paisa/core/common_enum.dart';
import 'package:paisa/core/data/super_id.dart';

part 'recurring.g.dart';
part 'recurring.freezed.dart';

@unfreezed
class RecurringModel extends HiveObject
    with _$RecurringModel
    implements SuperId {
  @HiveType(typeId: 5, adapterName: 'RecurringModelAdapter')
  factory RecurringModel({
    @HiveField(0) required String name,
    @HiveField(1) required double amount,
    @HiveField(2, defaultValue: RecurringType.daily)
    required RecurringType recurringType,
    @HiveField(3) required DateTime recurringDate,
    @HiveField(4) int? superId,
    @HiveField(5) required int accountId,
    @HiveField(6) required int categoryId,
    @HiveField(7, defaultValue: TransactionType.expense)
    required TransactionType transactionType,
  }) = _RecurringModel;

  RecurringModel._();
}
