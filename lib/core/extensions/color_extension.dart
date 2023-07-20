import 'package:flutter/material.dart';

extension ColorHelper on BuildContext {
  Color get outline => Theme.of(this).colorScheme.outline;

  Color get outlineVariant => Theme.of(this).colorScheme.outlineVariant;

  Color get primary => Theme.of(this).colorScheme.primary;

  Color get onPrimary => Theme.of(this).colorScheme.onPrimary;

  Color get primaryContainer => Theme.of(this).colorScheme.primaryContainer;

  Color get onPrimaryContainer => Theme.of(this).colorScheme.onPrimaryContainer;

  Color get secondary => Theme.of(this).colorScheme.secondary;

  Color get onSecondary => Theme.of(this).colorScheme.onSecondary;

  Color get inverseSurface => Theme.of(this).colorScheme.inverseSurface;

  Color get onInverseSurface => Theme.of(this).colorScheme.onInverseSurface;

  Color get secondaryContainer => Theme.of(this).colorScheme.secondaryContainer;

  Color get onSecondaryContainer =>
      Theme.of(this).colorScheme.onSecondaryContainer;

  Color get onTertiary => Theme.of(this).colorScheme.tertiary;

  Color get tertiary => Theme.of(this).colorScheme.onTertiary;

  Color get tertiaryContainer => Theme.of(this).colorScheme.tertiaryContainer;

  Color get onTertiaryContainer =>
      Theme.of(this).colorScheme.onTertiaryContainer;

  Color get surfaceVariant => Theme.of(this).colorScheme.surfaceVariant;

  Color get onSurfaceVariant => Theme.of(this).colorScheme.onSurfaceVariant;

  Color get surface => Theme.of(this).colorScheme.surface;

  Color get onSurface => Theme.of(this).colorScheme.onSurface;

  Color get surfaceTint => Theme.of(this).colorScheme.surfaceTint;

  Color get background => Theme.of(this).colorScheme.background;

  Color get onBackground => Theme.of(this).colorScheme.onBackground;

  Color get error => Theme.of(this).colorScheme.error;

  Color get shadow => Theme.of(this).colorScheme.shadow;

  Color get errorContainer => Theme.of(this).colorScheme.errorContainer;

  Color get onError => Theme.of(this).colorScheme.onError;

  Color get onErrorContainer => Theme.of(this).colorScheme.onErrorContainer;
}

extension TextStyleColorMapping on TextStyle {
  TextStyle onPrimary(BuildContext context) {
    return copyWith(color: context.onPrimary);
  }

  TextStyle onSecondary(BuildContext context) {
    return copyWith(color: context.onSecondary);
  }

  TextStyle onTertiary(BuildContext context) {
    return copyWith(color: context.onTertiary);
  }

  TextStyle onPrimaryContainer(BuildContext context) {
    return copyWith(color: context.onPrimaryContainer);
  }

  TextStyle onSecondaryContainer(BuildContext context) {
    return copyWith(color: context.onSecondaryContainer);
  }

  TextStyle onTertiaryContainer(BuildContext context) {
    return copyWith(color: context.onTertiaryContainer);
  }

  TextStyle onSurface(BuildContext context) {
    return copyWith(color: context.onSurface);
  }
}
