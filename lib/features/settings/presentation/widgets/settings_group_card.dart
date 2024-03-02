// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:paisa/core/common.dart';

class SettingsGroup extends StatelessWidget {
  const SettingsGroup({
    super.key,
    required this.title,
    required this.options,
  });

  final List<Widget> options;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      color: context.background,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12), // if you need this
        side: BorderSide(
          color: Colors.grey.withOpacity(0.2),
        ),
      ),
      child: ListView(
        padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Text(
              title,
              style: context.titleMedium?.copyWith(
                color: context.primary,
              ),
            ),
          ),
          ...options,
        ],
      ),
    );
  }
}
