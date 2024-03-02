// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

// Project imports:
import 'package:paisa/config/routes.dart';
import 'package:paisa/core/common.dart';
import 'package:paisa/core/use_case/use_case.dart';
import 'package:paisa/features/intro/domain/use_case/get_selected_country_use_case.dart';
import 'package:paisa/main.dart';

class CurrencyChangeWidget extends StatelessWidget {
  const CurrencyChangeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final GetSelectedCountryUseCase getSelectedCountryUseCase =
        getIt<GetSelectedCountryUseCase>();
    final String? currentSymbol = getSelectedCountryUseCase(NoParams())?.code;

    return ListTile(
      leading: Icon(
        MdiIcons.currencySign,
        color: context.onSurfaceVariant,
      ),
      onTap: () {
        UserOnboardingPageData(forceCountrySelector: true).push(context);
      },
      title: Text(context.loc.currencySign),
      subtitle: Text(currentSymbol ?? ''),
    );
  }
}
