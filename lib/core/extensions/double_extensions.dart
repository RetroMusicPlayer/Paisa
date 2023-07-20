import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:paisa/config/routes.dart';
import 'package:paisa/core/common.dart';
import 'package:paisa/features/country_picker/domain/entities/country.dart';
import 'package:provider/provider.dart';

extension MappingOnDouble on double {
  String toFormateCurrencyOld({int decimalDigits = 2}) {
    return NumberFormat.simpleCurrency(
      locale: settings.get(userLanguageKey),
      decimalDigits: decimalDigits,
    ).format(this);
  }

  String toFormateCurrency(BuildContext context) {
    final Country country = Provider.of<Country>(context);
    final formatter = NumberFormat.currency(customPattern: country.pattern);
    if (country.symbolOnLeft) {
      return '${country.symbol}${country.spaceBetweenAmountAndSymbol ? ' ' : ''}${formatter.format(this)}'
          .replaceAll(',', country.thousandsSeparator)
          .replaceAll('.', country.decimalSeparator);
    } else {
      return '${formatter.format(this)}${country.spaceBetweenAmountAndSymbol ? ' ' : ''}${country.symbol}'
          .replaceAll(',', country.thousandsSeparator)
          .replaceAll('.', country.decimalSeparator);
    }
  }
}
