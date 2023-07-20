import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:paisa/core/common.dart';

extension LocalizedBuildContext on BuildContext {
  AppLocalizations get loc => AppLocalizations.of(this)!;
}

extension AppBarHelper on BuildContext {
  AppBar materialYouAppBar(
    String title, {
    List<Widget>? actions,
    Widget? leadingWidget,
  }) {
    return AppBar(
      leading: leadingWidget,
      title: Text(title),
      titleTextStyle: titleLarge?.copyWith(fontWeight: FontWeight.bold),
      actions: actions ?? [],
    );
  }

  ScaffoldFeatureController<SnackBar, SnackBarClosedReason>
      showMaterialSnackBar(
    String content, {
    Color? backgroundColor,
    Color? color,
    SnackBarAction? action,
  }) {
    return ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        content: Text(
          content,
          style: TextStyle(
            color: color ?? onSurfaceVariant,
          ),
        ),
        behavior: SnackBarBehavior.floating,
        backgroundColor: backgroundColor ?? surfaceVariant,
        action: action,
      ),
    );
  }
}
