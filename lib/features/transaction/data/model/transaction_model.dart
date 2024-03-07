import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:paisa/core/common_enum.dart';
import 'package:paisa/core/data/super_id.dart';

part 'transaction_model.g.dart';
part 'transaction_model.freezed.dart';

@unfreezed
class TransactionModel extends HiveObject
    with _$TransactionModel
    implements SuperId {
  @HiveType(typeId: 0, adapterName: 'TransactionModelAdapter')
  factory TransactionModel({
    @HiveField(5) int? accountId,
    @HiveField(6) int? categoryId,
    @HiveField(1) double? currency,
    @HiveField(8) String? description,
    @HiveField(0) String? name,
    @HiveField(7) int? superId,
    @HiveField(3) DateTime? time,
    @Default(TransactionType.expense)
    @HiveField(4, defaultValue: TransactionType.expense)
    TransactionType? type,
  }) = _TransactionModel;

  TransactionModel._();

  factory TransactionModel.fromJson(Map<String, dynamic> json) =>
      _$TransactionModelFromJson(json);
}
