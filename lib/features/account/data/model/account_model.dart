import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:paisa/core/common_enum.dart';
import 'package:paisa/core/data/super_id.dart';
import 'package:paisa/features/country_picker/data/models/country_model.dart';

part 'account_model.freezed.dart';
part 'account_model.g.dart';

@unfreezed
class AccountModel extends HiveObject with _$AccountModel implements SuperId {
  @HiveType(typeId: 2, adapterName: 'AccountModelAdapter')
  factory AccountModel({
    @HiveField(0) String? name,
    @HiveField(2) CountryModel? currencySymbol,
    @HiveField(3) String? bankName,
    @HiveField(6, defaultValue: CardType.bank) CardType? cardType,
    @HiveField(7) int? superId,
    @HiveField(8, defaultValue: 0) double? amount,
    @HiveField(9, defaultValue: 0xFFFFC107) int? color,
    @Default(false) @HiveField(4, defaultValue: false) bool isAccountDefault,
    @HiveField(21, defaultValue: false) bool? isAccountExcluded,
  }) = _AccountModel;

  AccountModel._();

  factory AccountModel.fromJson(Map<String, dynamic> json) =>
      _$AccountModelFromJson(json);
}
