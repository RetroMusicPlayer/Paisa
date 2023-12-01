import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:paisa/config/routes_name.dart';
import 'package:paisa/core/common.dart';
import 'package:paisa/features/settings/domain/use_case/setting_use_case.dart';
import 'package:paisa/main.dart';

class CurrencyChangeWidget extends StatelessWidget {
  const CurrencyChangeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final SettingsUseCase settingsUseCase = getIt.get();
    final String currentSymbol =
        settingsUseCase.get(userLanguageKey, defaultValue: '');
    return ListTile(
      onTap: () {
        context.pushNamed(
          RoutesName.userOnboarding.name,
          queryParameters: {
            'force_currency_selector': 'true',
          },
        );
      },
      title: Text(context.loc.currencySign),
      subtitle: Text(currentSymbol),
    );
  }
}
