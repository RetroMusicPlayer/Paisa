import 'package:flutter/material.dart';

class CurrencyModel {
  final String name;
  final Locale locale;

  CurrencyModel(this.name, this.locale);
}

List<CurrencyModel> getLocales() => [
      CurrencyModel("US Dollar", const Locale('en')),
      CurrencyModel("Indian Rupee", const Locale('hi')),
      CurrencyModel("Nepalese Rupee", const Locale('ne')),
      CurrencyModel("Malaysia Ringgit", const Locale('ms')),
      CurrencyModel("Ukrainian Hryvnia", const Locale('uk')),
      CurrencyModel("Polish Złoty", const Locale('pl')),
      CurrencyModel("Austria Euro", const Locale('de')),
      CurrencyModel("Bangladesh Taka", const Locale('bn')),
      CurrencyModel("Turkish lira", const Locale('tr')),
      CurrencyModel("Mexican Peso", const Locale('es-mx')),
      CurrencyModel("Philippine Peso", const Locale('fil')),
      CurrencyModel("Indonesian Rupiah", const Locale('id')),
      CurrencyModel("Vietnamese Dong", const Locale('vi')),
      CurrencyModel("Lebanese Pound", const Locale('ar-lb')),
      CurrencyModel("Taiwan Dollar", const Locale('zh-tw')),
      CurrencyModel("Sri Lanka Rupee", const Locale('si')),
      CurrencyModel("Pakistan Rupee", const Locale('ur')),
      CurrencyModel("Swiss Franc", const Locale('fr_CH')),
      CurrencyModel("Egyptian Pound", const Locale('ar_EG')),
      CurrencyModel("Brazilian Real", const Locale('pt')),
      CurrencyModel("Russian Ruble", const Locale('ru')),
      CurrencyModel("Chinese Yuan", const Locale('zh')),
      CurrencyModel("Australia Dollar", const Locale('en_AU')),
      CurrencyModel("Canadian Dollar", const Locale('en_CA')),
      CurrencyModel("British Pound", const Locale('en_GB')),
      CurrencyModel("Swedish Krona", const Locale('sv')),
      CurrencyModel("Iranian Rial", const Locale('fa')),
      CurrencyModel("South African Rand", const Locale('zu')),
      CurrencyModel("New Taiwan dollar", const Locale('zh_TW')),
      CurrencyModel("Ethiopian Birr", const Locale('am')),
      CurrencyModel("Singapore Dollar", const Locale('en_SG')),
      CurrencyModel("Hungarian Forint", const Locale('hu')),
      CurrencyModel("Romanian Leu", const Locale('ro')),
      CurrencyModel("Macedonian Denar", const Locale('mk')),
      CurrencyModel("Dominican Peso", const Locale('es-do')),
      CurrencyModel("United Arab Emirates Dirham", const Locale('ar_AE')),
      CurrencyModel("Kenyan Shilling", const Locale('en_KE')),
      CurrencyModel("Thai Baht ", const Locale('th')),
      CurrencyModel("Zambian Kwacha", const Locale('en_ZM')),
      CurrencyModel("Serbian Dinar", const Locale('sr_Latn')),
      CurrencyModel("Kazakhstani Tenge", const Locale('kk')),
      CurrencyModel("Argentine Peso", const Locale('es_AR')),
      CurrencyModel("Israeli Shekel", const Locale('iw_IL')),
      CurrencyModel("Bulgarian Lev", const Locale('bg')),
      CurrencyModel("Danish Krone", const Locale('da')),
      CurrencyModel("Belarusian ruble", const Locale('be')),
      CurrencyModel("Albanian Lek", const Locale('sq')),
      CurrencyModel("Czech Koruna", const Locale('cs')),
      CurrencyModel("Tanzanian Shilling", const Locale('sw')),
      CurrencyModel("Mauritian Rupee", const Locale('en_MU'))
    ];
