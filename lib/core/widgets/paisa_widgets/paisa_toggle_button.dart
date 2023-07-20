import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
    final BorderRadius borderRadius = itemIndex == ItemIndex.first
        ? const BorderRadius.only(
            topLeft: Radius.circular(8),
            topRight: Radius.circular(8),
          )
        : itemIndex == ItemIndex.last
            ? const BorderRadius.only(
                bottomLeft: Radius.circular(8),
                bottomRight: Radius.circular(8),
              )
            : const BorderRadius.only();
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
          style: GoogleFonts.outfit(
            textStyle: context.bodyMedium?.copyWith(
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}
