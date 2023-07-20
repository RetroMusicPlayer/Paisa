import 'package:paisa/features/country_picker/data/models/country_model.dart';

class Country extends CountryModel {
  Country({
    required super.code,
    required super.name,
    required super.symbol,
    required super.flag,
    required super.decimalDigits,
    required super.number,
    required super.namePlural,
    required super.thousandsSeparator,
    required super.decimalSeparator,
    required super.spaceBetweenAmountAndSymbol,
    required super.symbolOnLeft,
    required super.pattern,
  });
}
