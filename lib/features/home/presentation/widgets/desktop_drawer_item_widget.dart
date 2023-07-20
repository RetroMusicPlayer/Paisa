import 'package:flutter/material.dart';

import 'package:paisa/core/common.dart';

class NavigationBarItem extends StatelessWidget {
  const NavigationBarItem({
    super.key,
    required this.title,
    required this.icon,
    required this.isSelected,
    required this.onPressed,
  });

  final IconData icon;
  final bool isSelected;
  final VoidCallback onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    final color = isSelected ? context.primary : context.labelLarge?.color;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      decoration: isSelected
          ? BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(32),
              color: context.primaryContainer,
            )
          : null,
      child: InkWell(
        borderRadius: BorderRadius.circular(32),
        onTap: onPressed,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 18.0,
                vertical: 14,
              ),
              child: Icon(
                icon,
                color: color,
                size: 28,
              ),
            ),
            Text(
              title,
              style: TextStyle(color: color),
            )
          ],
        ),
      ),
    );
  }
}
