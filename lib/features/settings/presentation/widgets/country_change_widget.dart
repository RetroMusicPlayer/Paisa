import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:injectable/injectable.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'package:paisa/core/common.dart';

class CountryChangeWidget extends StatelessWidget {
  const CountryChangeWidget({
    Key? key,
    @Named('settings') required this.settings,
  }) : super(key: key);

  final Box<dynamic> settings;

  @override
  Widget build(BuildContext context) {
    final String currentSymbol =
        settings.get(userLanguageKey, defaultValue: 'INR') ?? '';
    return ListTile(
      leading: Icon(
        MdiIcons.currencySign,
        color: context.onSurfaceVariant,
      ),
      onTap: () {
        context.pushNamed(
          countrySelectorName,
          queryParameters: {'force_country_selector': 'true'},
        );
      },
      title: Text(context.loc.currencySign),
      subtitle: Text(currentSymbol),
    );
  }
}
