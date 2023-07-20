import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:injectable/injectable.dart';

import 'package:paisa/core/common.dart';

class VariableSizeFAB extends StatelessWidget {
  const VariableSizeFAB({
    super.key,
    required this.onPressed,
    required this.icon,
    @Named('settings') required this.settings,
  });

  final IconData icon;
  final VoidCallback onPressed;
  final Box<dynamic> settings;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<Box<dynamic>>(
      valueListenable: settings.listenable(keys: [smallSizeFabKey]),
      builder: (context, value, child) {
        final isSmallSize = value.get(smallSizeFabKey, defaultValue: false);
        if (isSmallSize) {
          return FloatingActionButton(
            onPressed: onPressed,
            child: Icon(icon),
          );
        } else {
          return FloatingActionButton.large(
            onPressed: onPressed,
            child: Icon(icon),
          );
        }
      },
    );
  }
}
