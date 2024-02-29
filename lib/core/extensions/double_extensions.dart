// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

// Project imports:
import 'package:paisa/features/intro/domain/entities/country_entity.dart';

extension MappingOnDouble on double {
  String toFormateCurrency(BuildContext context) {
    final CountryEntity country = Provider.of<CountryEntity>(context);
    final formatter = NumberFormat.currency(customPattern: country.pattern);

    return country.symbolOnLeft ?? false
        ? '${country.symbol}${country.spaceBetweenAmountAndSymbol ?? false ? ' ' : ''}${formatter.format(this)}'
            .replaceAll(',', country.thousandsSeparator)
            .replaceAll('.', country.decimalSeparator ?? '.')
        : '${formatter.format(this)}${country.spaceBetweenAmountAndSymbol ?? false ? ' ' : ''}${country.symbol}'
            .replaceAll(',', country.thousandsSeparator)
            .replaceAll('.', country.decimalSeparator ?? '.');
  }
}
