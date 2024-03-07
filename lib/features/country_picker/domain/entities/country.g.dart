// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CountryEntityImpl _$$CountryEntityImplFromJson(Map<String, dynamic> json) =>
    _$CountryEntityImpl(
      code: json['code'] as String,
      decimalDigits: json['decimalDigits'] as int?,
      decimalSeparator: json['decimalSeparator'] as String?,
      name: json['name'] as String,
      namePlural: json['namePlural'] as String?,
      number: json['number'] as int,
      pattern: json['pattern'] as String,
      spaceBetweenAmountAndSymbol: json['spaceBetweenAmountAndSymbol'] as bool?,
      symbol: json['symbol'] as String?,
      symbolOnLeft: json['symbolOnLeft'] as bool?,
      thousandsSeparator: json['thousandsSeparator'] as String,
    );

Map<String, dynamic> _$$CountryEntityImplToJson(_$CountryEntityImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'decimalDigits': instance.decimalDigits,
      'decimalSeparator': instance.decimalSeparator,
      'name': instance.name,
      'namePlural': instance.namePlural,
      'number': instance.number,
      'pattern': instance.pattern,
      'spaceBetweenAmountAndSymbol': instance.spaceBetweenAmountAndSymbol,
      'symbol': instance.symbol,
      'symbolOnLeft': instance.symbolOnLeft,
      'thousandsSeparator': instance.thousandsSeparator,
    };
