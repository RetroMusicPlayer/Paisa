import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaisaMaterialYouChip extends StatelessWidget {
  const PaisaMaterialYouChip({
    super.key,
    required this.title,
    required this.onPressed,
    required this.isSelected,
  });

  final String title;
  final VoidCallback onPressed;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    final borderRadius =
        isSelected ? BorderRadius.circular(28) : BorderRadius.circular(12);
    final colorPrimary = isSelected
        ? Theme.of(context).colorScheme.primary
        : Theme.of(context).colorScheme.surfaceVariant;
    final colorOnPrimary = isSelected
        ? Theme.of(context).colorScheme.onPrimary
        : Theme.of(context).colorScheme.onSurfaceVariant;
    return Row(
      children: [
        GestureDetector(
          onTap: onPressed,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: borderRadius,
              color: colorPrimary,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: kIsWeb ? 28 : 16,
                vertical: 12,
              ),
              child: Text(
                title,
                style: GoogleFonts.outfit(
                  textStyle: Theme.of(context).textTheme.titleSmall,
                  color: colorOnPrimary,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: 8)
      ],
    );
  }
}
