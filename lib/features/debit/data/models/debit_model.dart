import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:paisa/core/data/super_id.dart';
import 'package:paisa/core/enum/debt_type.dart';

part 'debit_model.g.dart';
part 'debit_model.freezed.dart';

@unfreezed
class DebitModel extends HiveObject with _$DebitModel implements SuperId {
  @HiveType(typeId: 4, adapterName: 'DebitModelAdapter')
  factory DebitModel({
    @HiveField(1) String? description,
    @HiveField(2) double? amount,
    @HiveField(3) DateTime? dateTime,
    @HiveField(4) DateTime? expiryDateTime,
    @HiveField(5, defaultValue: DebitType.debit) DebitType? debtType,
    @HiveField(6, defaultValue: 0) int? superId,
    @HiveField(7, defaultValue: '') String? name,
  }) = _DebitModel;

  DebitModel._();

  factory DebitModel.fromJson(Map<String, dynamic> json) =>
      _$DebitModelFromJson(json);
}
