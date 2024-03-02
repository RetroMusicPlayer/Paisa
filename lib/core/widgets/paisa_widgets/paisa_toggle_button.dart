// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:paisa/core/common.dart';

enum ItemIndex { first, middle, last }

class PaisaToggleButton extends StatelessWidget {
  const PaisaToggleButton({
    super.key,
    required this.title,
    required this.isSelected,
    required this.onPressed,
    this.itemIndex = ItemIndex.middle,
  });

  final bool isSelected;
  final ItemIndex itemIndex;
  final VoidCallback onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    final textColor = isSelected ? context.primary : null;
    final color = isSelected ? context.primaryContainer : null;
    final BorderRadius borderRadius;
    switch (itemIndex) {
      case ItemIndex.first:
        borderRadius = const BorderRadius.only(
          topLeft: Radius.circular(8),
          topRight: Radius.circular(8),
        );
        break;
      case ItemIndex.last:
        borderRadius = const BorderRadius.only(
          bottomLeft: Radius.circular(8),
          bottomRight: Radius.circular(8),
        );
        break;
      default:
        borderRadius = const BorderRadius.only();
    }

    return InkWell(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: borderRadius,
        ),
        clipBehavior: Clip.antiAlias,
        padding: const EdgeInsets.all(16.0),
        child: Text(
          title,
          style: context.bodyMedium?.copyWith(
            color: textColor,
          ),
        ),
      ),
    );
  }
}
