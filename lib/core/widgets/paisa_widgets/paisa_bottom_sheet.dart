// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:paisa/core/common.dart';

enum UserMenuPopup { debts, chooseTheme, settings, userDetails }

Future<void> paisaBottomSheet(
  BuildContext context,
  Widget child,
) {
  return showModalBottomSheet(
    context: context,
    builder: (_) => Padding(
      padding: MediaQuery.viewInsetsOf(context),
      child: SafeArea(
        child: Material(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
          ),
          child: child,
        ),
      ),
    ),
  );
}

Future<T?> paisaAlertDialog<T>(
  BuildContext context, {
  required Widget child,
  required Widget title,
  required Widget confirmationButton,
}) {
  return showDialog<T>(
    context: context,
    builder: (context) => AlertDialog(
      titleTextStyle: context.titleLarge,
      title: title,
      content: child,
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: Text(
            context.loc.cancel,
          ),
        ),
        confirmationButton,
      ],
    ),
  );
}
