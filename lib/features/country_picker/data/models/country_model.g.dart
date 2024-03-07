// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CountryModelAdapter extends TypeAdapter<_$CountryModelImpl> {
  @override
  final int typeId = 7;

  @override
  _$CountryModelImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$CountryModelImpl(
      code: fields[0] as String,
      decimalDigits: fields[1] as int?,
      decimalSeparator: fields[2] as String?,
      name: fields[3] as String,
      namePlural: fields[4] as String?,
      number: fields[5] as int,
      pattern: fields[6] as String,
      spaceBetweenAmountAndSymbol: fields[7] as bool?,
      symbol: fields[9] as String?,
      symbolOnLeft: fields[10] as bool?,
      thousandsSeparator: fields[11] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$CountryModelImpl obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.code)
      ..writeByte(1)
      ..write(obj.decimalDigits)
      ..writeByte(2)
      ..write(obj.decimalSeparator)
      ..writeByte(3)
      ..write(obj.name)
      ..writeByte(4)
      ..write(obj.namePlural)
      ..writeByte(5)
      ..write(obj.number)
      ..writeByte(6)
      ..write(obj.pattern)
      ..writeByte(7)
      ..write(obj.spaceBetweenAmountAndSymbol)
      ..writeByte(9)
      ..write(obj.symbol)
      ..writeByte(10)
      ..write(obj.symbolOnLeft)
      ..writeByte(11)
      ..write(obj.thousandsSeparator);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CountryModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CountryModelImpl _$$CountryModelImplFromJson(Map<String, dynamic> json) =>
    _$CountryModelImpl(
      code: json['code'] as String,
      decimalDigits: json['decimal_digits'] as int?,
      decimalSeparator: json['decimal_separator'] as String?,
      name: json['name'] as String,
      namePlural: json['name_plural'] as String?,
      number: json['number'] as int,
      pattern: json['pattern'] as String,
      spaceBetweenAmountAndSymbol:
          json['space_between_amount_and_symbol'] as bool?,
      symbol: json['symbol'] as String?,
      symbolOnLeft: json['symbol_on_left'] as bool?,
      thousandsSeparator: json['thousands_separator'] as String,
    );

Map<String, dynamic> _$$CountryModelImplToJson(_$CountryModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'decimal_digits': instance.decimalDigits,
      'decimal_separator': instance.decimalSeparator,
      'name': instance.name,
      'name_plural': instance.namePlural,
      'number': instance.number,
      'pattern': instance.pattern,
      'space_between_amount_and_symbol': instance.spaceBetweenAmountAndSymbol,
      'symbol': instance.symbol,
      'symbol_on_left': instance.symbolOnLeft,
      'thousands_separator': instance.thousandsSeparator,
    };
