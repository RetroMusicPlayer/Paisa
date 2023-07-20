import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:paisa/core/common_enum.dart';
import 'package:paisa/main.dart';

import 'package:paisa/core/common.dart';

class WelcomeNameWidget extends StatelessWidget {
  const WelcomeNameWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<Box>(
      valueListenable: getIt
          .get<Box<dynamic>>(instanceName: BoxType.settings.name)
          .listenable(
        keys: [userNameKey],
      ),
      builder: (context, value, _) {
        final name = value.get(userNameKey, defaultValue: 'Name');

        return ListTile(
          title: Text(
            name,
            style: GoogleFonts.outfit(
              fontWeight: FontWeight.w600,
              textStyle: context.titleMedium,
              color: context.onBackground,
            ),
          ),
          subtitle: Text(
            context.loc.welcomeMessage,
            style: Theme.of(context)
                .textTheme
                .labelMedium
                ?.copyWith(color: context.bodySmall?.color),
          ),
        );
      },
    );
  }
}
