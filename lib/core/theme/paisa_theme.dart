// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Project imports:
import 'package:paisa/core/theme/custom_color.dart';

ElevatedButtonThemeData elevatedButtonTheme(
  BuildContext context,
  ColorScheme colorScheme,
) {
  return ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 12,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(32.0),
      ),
      textStyle: TextStyle(
        fontWeight: FontWeight.w600,
        color: colorScheme.onPrimary,
      ),
    ),
  );
}

InputDecorationTheme get inputDecorationTheme {
  return InputDecorationTheme(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12.0),
    ),
    filled: true,
  );
}

NavigationBarThemeData navigationBarThemeData(
  ColorScheme colorScheme,
  TextTheme? textTheme,
) {
  return NavigationBarThemeData(
    backgroundColor: colorScheme.surface,
    labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
    labelTextStyle: MaterialStateProperty.resolveWith((states) {
      return states.contains(MaterialState.selected)
          ? textTheme?.bodyLarge?.copyWith(
              fontWeight: FontWeight.bold,
              color: colorScheme.onSurface,
            )
          : textTheme?.bodyLarge?.copyWith(
              color: colorScheme.onSurface.withOpacity(0.75),
            );
    }),
  );
}

NavigationDrawerThemeData navigationDrawerThemeData(
  ColorScheme colorScheme,
  TextTheme? textTheme,
) {
  return NavigationDrawerThemeData(
    backgroundColor: colorScheme.surface,
    labelTextStyle: MaterialStateProperty.resolveWith((states) {
      return states.contains(MaterialState.selected)
          ? textTheme?.bodyLarge?.copyWith(
              fontWeight: FontWeight.bold,
            )
          : textTheme?.bodyLarge;
    }),
  );
}

DrawerThemeData drawerThemeData(
  ColorScheme colorScheme,
  TextTheme? textTheme,
) {
  return DrawerThemeData(
    backgroundColor: colorScheme.surface,
  );
}

FloatingActionButtonThemeData floatingActionButton(ColorScheme colorScheme) {
  return FloatingActionButtonThemeData(
    backgroundColor: colorScheme.primary,
    foregroundColor: colorScheme.onPrimary,
  );
}

AppBarTheme appBarTheme(SystemUiOverlayStyle systemUiOverlayStyle) {
  return AppBarTheme(
    elevation: 0,
    systemOverlayStyle: systemUiOverlayStyle.copyWith(
      statusBarColor: Colors.transparent,
    ),
  );
}

AppBarTheme appBarThemeLight(ColorScheme colorScheme) {
  return AppBarTheme(
    elevation: 0,
    systemOverlayStyle: SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: Colors.transparent,
    ),
  );
}

AppBarTheme appBarThemeDark(ColorScheme colorScheme) {
  return AppBarTheme(
    elevation: 0,
    systemOverlayStyle: SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.transparent,
    ),
  );
}

DialogTheme get dialogTheme {
  return DialogTheme(
    titleTextStyle: const TextStyle(
      fontWeight: FontWeight.bold,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(24),
    ),
  );
}

TimePickerThemeData get timePickerTheme {
  return TimePickerThemeData(
    helpTextStyle: const TextStyle(
      fontWeight: FontWeight.bold,
    ),
    hourMinuteTextStyle: const TextStyle(
      fontWeight: FontWeight.bold,
    ),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
    hourMinuteShape: const CircleBorder(),
  );
}

extension ColorExtension on Color {
  /// Convert the color to a darken color based on the [percent]
  Color darken([int percent = 40]) {
    assert(1 <= percent && percent <= 100);
    final value = 1 - percent / 100;

    return Color.fromARGB(
      alpha,
      (red * value).round(),
      (green * value).round(),
      (blue * value).round(),
    );
  }
}

CustomColors lightCustomColor = CustomColors(
  red: Colors.red.shade400,
  green: Colors.green.shade400,
  blue: Colors.blue.shade400,
);
CustomColors darkCustomColor = CustomColors(
  red: Colors.red.shade400,
  green: Colors.green.shade400,
  blue: Colors.blue.shade400,
);
