class CountryModel {
  CountryModel({
    required this.code,
    required this.name,
    required this.symbol,
    required this.flag,
    required this.decimalDigits,
    required this.number,
    required this.namePlural,
    required this.thousandsSeparator,
    required this.decimalSeparator,
    required this.spaceBetweenAmountAndSymbol,
    required this.symbolOnLeft,
    required this.pattern,
  });

  factory CountryModel.fromJson(Map<dynamic, dynamic> json) => CountryModel(
        code: json["code"],
        name: json["name"],
        symbol: json["symbol"],
        flag: json["flag"],
        decimalDigits: json["decimal_digits"],
        number: json["number"],
        namePlural: json["name_plural"],
        thousandsSeparator: json["thousands_separator"],
        decimalSeparator: json["decimal_separator"],
        spaceBetweenAmountAndSymbol: json["space_between_amount_and_symbol"],
        symbolOnLeft: json["symbol_on_left"],
        pattern: json["pattern"],
      );

  final String code;
  final int decimalDigits;
  final String decimalSeparator;
  final String? flag;
  final String name;
  final String namePlural;
  final int number;
  final String pattern;
  final bool spaceBetweenAmountAndSymbol;
  final String symbol;
  final bool symbolOnLeft;
  final String thousandsSeparator;

  Map<String, dynamic> toJson() => {
        "code": code,
        "name": name,
        "symbol": symbol,
        "flag": flag,
        "decimal_digits": decimalDigits,
        "number": number,
        "name_plural": namePlural,
        "thousands_separator": thousandsSeparator,
        "decimal_separator": decimalSeparator,
        "space_between_amount_and_symbol": spaceBetweenAmountAndSymbol,
        "symbol_on_left": symbolOnLeft,
        "pattern": pattern,
      };
}
