// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AccountModelAdapter extends TypeAdapter<_$_AccountModel> {
  @override
  final int typeId = 2;

  @override
  _$_AccountModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_AccountModel(
      name: fields[0] as String?,
      isAccountExcluded: fields[1] == null ? false : fields[1] as bool?,
      currencySymbol: fields[2] as CountryModel?,
      bankName: fields[3] as String?,
      cardType: fields[6] == null ? CardType.bank : fields[6] as CardType?,
      superId: fields[7] as int?,
      amount: fields[8] == null ? 0 : fields[8] as double?,
      color: fields[9] == null ? 4294951175 : fields[9] as int?,
      isAccountDefault: fields[4] == null ? false : fields[4] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, _$_AccountModel obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.isAccountExcluded)
      ..writeByte(2)
      ..write(obj.currencySymbol)
      ..writeByte(3)
      ..write(obj.bankName)
      ..writeByte(6)
      ..write(obj.cardType)
      ..writeByte(7)
      ..write(obj.superId)
      ..writeByte(8)
      ..write(obj.amount)
      ..writeByte(9)
      ..write(obj.color)
      ..writeByte(4)
      ..write(obj.isAccountDefault);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AccountModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AccountModel _$$_AccountModelFromJson(Map<String, dynamic> json) =>
    _$_AccountModel(
      name: json['name'] as String?,
      isAccountExcluded: json['isAccountExcluded'] as bool?,
      currencySymbol: json['currencySymbol'] == null
          ? null
          : CountryModel.fromJson(
              json['currencySymbol'] as Map<String, dynamic>),
      bankName: json['bankName'] as String?,
      cardType: $enumDecodeNullable(_$CardTypeEnumMap, json['cardType']),
      superId: json['superId'] as int?,
      amount: (json['amount'] as num?)?.toDouble(),
      color: json['color'] as int?,
      isAccountDefault: json['isAccountDefault'] as bool? ?? false,
    );

Map<String, dynamic> _$$_AccountModelToJson(_$_AccountModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'isAccountExcluded': instance.isAccountExcluded,
      'currencySymbol': instance.currencySymbol,
      'bankName': instance.bankName,
      'cardType': _$CardTypeEnumMap[instance.cardType],
      'superId': instance.superId,
      'amount': instance.amount,
      'color': instance.color,
      'isAccountDefault': instance.isAccountDefault,
    };

const _$CardTypeEnumMap = {
  CardType.cash: 'cash',
  CardType.bank: 'bank',
  CardType.wallet: 'wallet',
};
