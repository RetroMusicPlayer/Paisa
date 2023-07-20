import 'package:flutter/material.dart';

import 'package:paisa/core/common.dart';

class DrawerItemWidget extends StatelessWidget {
  const DrawerItemWidget({
    super.key,
    required this.isSelected,
    required this.onPressed,
    required this.title,
    required this.icon,
    this.selectedIcon,
  });

  final IconData icon;
  final bool isSelected;
  final VoidCallback onPressed;
  final IconData? selectedIcon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Container(
        decoration: isSelected
            ? BoxDecoration(
                borderRadius: BorderRadius.circular(32),
                color: context.secondaryContainer,
              )
            : null,
        child: InkWell(
          onTap: onPressed,
          borderRadius: BorderRadius.circular(32),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 16,
            ),
            child: Row(
              children: [
                Icon(
                  isSelected ? selectedIcon ?? icon : icon,
                  size: 18,
                  color: isSelected ? context.onSecondaryContainer : null,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  child: Text(
                    title,
                    style: context.titleMedium?.copyWith(
                      color: isSelected
                          ? Theme.of(context).colorScheme.onSecondaryContainer
                          : null,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
