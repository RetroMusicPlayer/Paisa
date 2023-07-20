import 'package:flutter/material.dart';
import 'package:paisa/core/common.dart';

class SettingsGroup extends StatelessWidget {
  const SettingsGroup({
    Key? key,
    required this.title,
    required this.options,
  }) : super(key: key);

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
          width: 1,
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
          ...options
        ],
      ),
    );
  }
}
