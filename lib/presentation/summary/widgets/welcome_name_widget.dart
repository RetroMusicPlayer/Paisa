import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:hive_flutter/adapters.dart';

import '../../../common/enum/box_types.dart';
import '../../../data/settings/settings_service.dart';

class WelcomeNameWidget extends StatelessWidget {
  const WelcomeNameWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<Box>(
      valueListenable: Hive.box(BoxType.settings.stringValue)
          .listenable(keys: [userNameKey]),
      builder: (context, value, _) {
        final name = value.get(userNameKey, defaultValue: 'Name');
        return Padding(
          padding: const EdgeInsets.only(
            bottom: 16,
            left: 16,
            right: 16,
            top: 8,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: Theme.of(context).textTheme.headline5?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              Text(
                AppLocalizations.of(context)!.welcomeMessage,
              ),
            ],
          ),
        );
      },
    );
  }
}
