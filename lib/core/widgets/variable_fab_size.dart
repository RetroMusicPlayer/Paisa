// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:hive_flutter/adapters.dart';

// Project imports:
import 'package:paisa/config/routes.dart';
import 'package:paisa/core/common.dart';

class VariableFABSize extends StatelessWidget {
  const VariableFABSize({
    super.key,
    required this.onPressed,
    required this.icon,
  });

  final IconData icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<Box<dynamic>>(
      valueListenable: settings.listenable(keys: [smallSizeFabKey]),
      builder: (context, value, child) {
        final isSmallSize = value.get(smallSizeFabKey, defaultValue: false);

        return isSmallSize
            ? FloatingActionButton(onPressed: onPressed, child: Icon(icon))
            : FloatingActionButton.large(
                onPressed: onPressed,
                child: Icon(icon),
              );
      },
    );
  }
}
