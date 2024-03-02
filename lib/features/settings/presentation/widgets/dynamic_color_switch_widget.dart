// Flutter imports:
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// Package imports:

// Project imports:
import 'package:paisa/config/routes.dart';
import 'package:paisa/core/common.dart';
import 'package:paisa/features/settings/presentation/widgets/setting_option.dart';

class DynamicColorSwitchWidget extends StatelessWidget {
  const DynamicColorSwitchWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
      builder: (context, setState) {
        bool? dynamicTheme = kIsWeb
            ? false
            : settings.get(
                dynamicThemeKey,
                defaultValue: false,
              );

        return SettingsOption(
          title: context.loc.dynamicColor,
          trailing: Switch(
            activeColor: context.primary,
            value: dynamicTheme!,
            onChanged: kIsWeb
                ? null
                : (value) {
                    settings.put(dynamicThemeKey, value);
                    setState(() {});
                  },
          ),
        );
      },
    );
  }
}
